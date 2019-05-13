package fr.epita.questions.model;

public class MCQQuestion extends Questions {

	public MCQQuestion(int quesId, String topics, String question, int difficulty, boolean ismcq, Answer answer) {
		super(quesId, topics, question, difficulty, ismcq, answer);
	}

}
