package fr.epita.questions.model;

/**
 * Holds MCQ Choices data
 * 
 * @author rekhap
 *
 */
public class MCQChoice {
	private int mcqId;
	private String choice;

	public MCQChoice(int mcqId, String choice) {
		this.mcqId = mcqId;
		this.choice = choice;
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public int getMcqId() {
		return mcqId;
	}

	public void setMcqId(int mcqId) {
		this.mcqId = mcqId;
	}
	
	@Override
	public String toString() {
		return "MCQChoice [ mcqId=" + mcqId + " choice=" + choice + "]";
	}

}
