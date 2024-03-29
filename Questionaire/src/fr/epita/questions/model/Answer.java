package fr.epita.questions.model;

/**
 * Holds User entered Answers
 * 
 * @author rekhap
 *
 */
public class Answer {

	private String text;

	public Answer(String text) {
		this.text = text;
	}
	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Answer [text=" + text + "]";
	}

}
