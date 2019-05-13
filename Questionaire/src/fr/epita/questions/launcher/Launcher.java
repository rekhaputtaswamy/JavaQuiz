package fr.epita.questions.launcher;

import java.util.List;
import java.util.Scanner;

import fr.epita.questions.model.MCQChoice;
import fr.epita.questions.model.Questions;
import fr.epita.questions.model.Student;
import fr.epita.questions.service.QuestionsDAO;

/**
 * Launcher of the Application where the execution begins
 * 
 * @author rekhap
 *
 */
public class Launcher {
	private static QuestionsDAO dao;
	private static Launcher launcher;
	private static Student studentDetail;

	public Launcher() {
		dao = new QuestionsDAO();
	}

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		launcher = new Launcher();
		
		//Enter Student details
		System.out.println("Enter Your name: ");
		Scanner scanner = new Scanner(System.in);
		String name = scanner.nextLine();

		if (name.isEmpty()) {
			System.out.println("You have not entered name, please enter your Name: ");
			scanner = new Scanner(System.in);
			name = scanner.nextLine();
		} 
		
		Student student = new Student();
		student.setName(name);
		studentDetail = dao.insertStudentToDB(student);
		
		launcher.getDifficultyAndTopic();
	}

	@SuppressWarnings("resource")
	/**
	 * Gets the Questions based on difficulty and topics entered by the user
	 */
	private void getDifficultyAndTopic() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter the difficulty level - 1 for difficult, 2 for Medium, 3 for Easy: ");
		int levels = scanner.nextInt();

		switch (levels) {
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		default:
			System.out.println(
					"You have entered the wrong choice. Select 1 for difficult, 2 for Medium, 3 for Easy: ");
			scanner = new Scanner(System.in);
			levels = scanner.nextInt();
			break;
		}

		System.out.println(
				"Enter from the topics for Questionaire from - Strings, Collections, Basics: ");
		scanner = new Scanner(System.in);
		String topicsChoice = scanner.nextLine();

		// Get Questions based on difficulty level and topics
		Questions question = new Questions();
		question.setTopics(topicsChoice);
		question.setDifficulty(levels);
		
		List<Questions> questions = dao.getQuestions(question);
		
		// Display the Questions
		launcher.displayQuestions(questions);
	}

	/**
	 * Display Questions to the user
	 */
	@SuppressWarnings("resource")
	private void displayQuestions(List<Questions> questions) {

		int score = 0;
		if (!questions.isEmpty()) {
			for (Questions quest : questions) {

				System.out.println(quest.getQuestion());
				checkAndFetchMCQs(quest);

				Scanner scanner = new Scanner(System.in);
				String ans = scanner.nextLine();

				if (!ans.isEmpty() && quest.getAnswer().getText().equals(ans)) {
					score += 10;
				}
			}

			if(studentDetail != null) {
				studentDetail.setScore(score);
				dao.updateScoreToDatabase(studentDetail);
				System.out.println(studentDetail.getName() + ", your Final Score is: " + score);
			}

		} else {

			System.out.println("No Questions available for the chosen Level and Topic!!");
		}
	}

	/**
	 * Checks if the given question id has MCQs. If yes displays the MCQs
	 * 
	 * @param quest
	 */
	private void checkAndFetchMCQs(Questions quest) {
		if (quest.isIsmcq()) {
			List<MCQChoice> mcqChoices = dao.getMCQs(quest);

			for (MCQChoice mcqChoice : mcqChoices) {
				System.out.println(mcqChoice.getChoice());
			}
		}
	}

}
