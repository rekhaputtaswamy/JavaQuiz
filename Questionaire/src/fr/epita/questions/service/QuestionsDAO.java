package fr.epita.questions.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fr.epita.questions.model.Answer;
import fr.epita.questions.model.MCQChoice;
import fr.epita.questions.model.Questions;
import fr.epita.questions.model.Student;

/**
 * DAO To get Data from the mcq_database Database
 * 
 * @author rekhap
 *
 */
public class QuestionsDAO {

	public static final String SELECTQUESTQUERY = "SELECT * FROM QUESTIONS WHERE DIFFICULTY = ? AND TOPICS = ? ORDER BY RAND()\n" + 
			"LIMIT 10";
	public static final String SELECTMCQQUERY = "SELECT * FROM MCQCHOICES WHERE QUES_ID_FK = ?";
	public static final String INSERTSTUDENTQUERY = "INSERT INTO STUDENT ( NAME ) VALUES (?)";
	public static final String UPDATESCOREQUERY = "UPDATE STUDENT SET SCORE = ? WHERE ID = ?";
	public static final String SELECTSTUDENTQUERY = "SELECT  MAX(ID) FROM STUDENT";

	/**
	 * Get all the questions
	 * @param
	 * 		questions with difficulty and topics
	 * @return List of Questions
	 */
	public List<Questions> getQuestions(Questions questions) {
		List<Questions> resultList = new ArrayList<>();
		ResultSet results = null;

		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECTQUESTQUERY);) {

			preparedStatement.setInt(1, questions.getDifficulty());
			preparedStatement.setString(2, questions.getTopics());

			results = preparedStatement.executeQuery();
			while (results.next()) {
				int id = results.getInt("QUES_ID");
				int difficulty = results.getInt("DIFFICULTY");
				boolean isMcq = results.getBoolean("ISMCQ");
				String topics = results.getString("TOPICS");
				String quest = results.getString("QUESTION");
				String ans = results.getString("ANSWER");
				Answer answer = new Answer(ans);

				Questions currentQuestion = new Questions(id, topics, quest, difficulty, isMcq, answer);
				resultList.add(currentQuestion);
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (results != null) {
					results.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultList;

	}
	
	/**
	 * Inserts the new student taking the test
	 * @param student details
	 * @return
	 *        updated student details 
	 */
	public Student insertStudentToDB(Student student) {
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(INSERTSTUDENTQUERY);) {
			
			statement.setString(1, student.getName());
			statement.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		int studentId = getStudentID();
		Student resultStudent = new Student();
		resultStudent.setId(studentId);
		resultStudent.setName(student.getName());
		
		return resultStudent;
	}
	
	/**
	 * Gets the lastest student ID who has taken the test 
	 * @return
	 * 		ID of the student
	 */
	public int getStudentID() {
		ResultSet results = null;
		int id = 0;

		try (Connection connection = getConnection()) {
			PreparedStatement statement = connection.prepareStatement(SELECTSTUDENTQUERY);

			results = statement.executeQuery();
			results.next();
			id = results.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {

				if (results != null) {
					results.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return id;
	}
	
	/**
	 * Updates the test scores of the current student
	 * @param student details with updated scores
	 */
	public void updateScoreToDatabase(Student student) {

		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATESCOREQUERY);) {

			statement.setInt(1, student.getScore());
			statement.setInt(2, student.getId());
			statement.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Gets the MCQs for the given question id
	 * 
	 * @param question data with ID
	 * @return List of MCQ Choices
	 */
	public List<MCQChoice> getMCQs(Questions question) {
		List<MCQChoice> mcqChoicesList = new ArrayList<>();
		ResultSet results = null;

		try (Connection connection = getConnection()) {
			PreparedStatement statement = connection.prepareStatement(SELECTMCQQUERY);

			statement.setInt(1, question.getQuesId());
			results = statement.executeQuery();

			while (results.next()) {
				int id = results.getInt("MCQ_ID");
				String choice = results.getString("CHOICE");

				MCQChoice mcqChoice = new MCQChoice(id, choice);
				mcqChoicesList.add(mcqChoice);
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {

				if (results != null) {
					results.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return mcqChoicesList;

	}

	/**
	 * Establishes connection with database
	 * 
	 * @return
	 * @throws SQLException
	 */
	private Connection getConnection() throws SQLException {
		Configuration conf = Configuration.getInstance();
		String jdbcUrl = conf.getConfigurationValue("jdbc.url");
		String user = conf.getConfigurationValue("jdbc.user");
		String password = conf.getConfigurationValue("jdbc.password");

		return DriverManager.getConnection(jdbcUrl, user, password);

	}
}
