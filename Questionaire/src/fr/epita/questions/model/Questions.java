package fr.epita.questions.model;

/**
 * Holds all the Questions
 * 
 * @author rekhap
 *
 */
public class Questions {

	private int quesId;
	private String topics;
	private String question;
	private int difficulty;
	private boolean ismcq;
	private Answer answer;

	public Questions() {
		
	}
	
	public Questions(int quesId, String topics, String question, int difficulty, boolean ismcq, Answer answer) {
		this.quesId = quesId;
		this.topics = topics;
		this.question = question;
		this.difficulty = difficulty;
		this.ismcq = ismcq;
		this.answer = answer;
	}

	public int getQuesId() {
		return quesId;
	}

	public void setQuesId(int quesId) {
		this.quesId = quesId;
	}

	public String getTopics() {
		return topics;
	}

	public void setTopics(String topics) {
		this.topics = topics;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}

	public boolean isIsmcq() {
		return ismcq;
	}

	public void setIsmcq(boolean ismcq) {
		this.ismcq = ismcq;
	}

	public Answer getAnswer() {
		return answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	
	@Override
	public String toString() {
		return "Question [quesId=" + quesId + ", question=" + question + ", topics=" + topics + ", difficulty="
				+ difficulty + "]";
	}
	
}
