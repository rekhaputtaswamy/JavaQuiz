CREATE SCHEMA mcq_database;

CREATE TABLE QUESTIONS  (QUES_ID INT PRIMARY KEY, QUESTION  VARCHAR(255), 
TOPICS VARCHAR(255), DIFFICULTY INT, ISMCQ BOOLEAN, ANSWER VARCHAR(255));

CREATE TABLE MCQCHOICES (MCQ_ID INT AUTO_INCREMENT PRIMARY KEY, QUES_ID_FK INT, CHOICE VARCHAR(255), 
FOREIGN KEY(QUES_ID_FK) REFERENCES QUESTIONS(QUES_ID ));

CREATE TABLE STUDENT (ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(255), SCORE INT);

INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (1, 'Which of the following is the feature in JAVA', 'Basics', 3, TRUE, 'Encapsulation');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (2, 'Which of the following is not a data type in JAVA', 'Basics', 3, TRUE, 'String');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (3, 'What is JAVA?', 'Basics', 3, FALSE, 'Java is a high-level programming language and is platform independent.');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (4, 'Which of the following is the correct way of writing main method?', 'Basics', 3, TRUE, 'public static void main(String[] args)');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (5, 'What is the result of System.out.println(i + " " + j);', 'Basics', 3, TRUE, '10 25');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (6, 'How to check boolean equality?', 'Basics', 3, TRUE, 'if(b1 == b2)');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (7, 'Find the output: int i = 10; int j = 12; i+=++j; System.out.println(i);', 'Basics', 3, TRUE, '23');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (8, 'Find the output: int i = 010; System.out.println(i);', 'Basics', 3, TRUE, '8');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (9, 'Find the output: int array[] = new int[1]; array[0] = 100; System.out.println(array.length());', 'Basics', 3, TRUE, 'Compilation error');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (10, 'Find the output: int i = 5, j = 2; System.out.println( i % j );', 'Basics', 3, TRUE, 'Run time error');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (11, 'What are the types of access specifiers available in Java', 'Basics', 3, TRUE, 'All the above');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (12, 'Which of the following is a constructor', 'Basics', 3, TRUE, 'Student student = new Student()');


INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (13, 'Difference between HashMap and HashTable', 'Collections', 1, FALSE, 'Hashtable is synchronized. HashMap is not synchronized');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (14, 'Which of the following operations are performed using Collections', 'Collections', 1, TRUE, 'Manipulation');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (15, 'Which of these packages contain all the collection classes', 'Collections', 1, TRUE, 'java.util');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (16, 'Which of these classes is not part of Java’s collection framework', 'Collections', 1, TRUE, 'Queue');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (17, 'What is Collection in Java?', 'Collections', 1, TRUE, 'A group of objects');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (18, 'Which of these methods deletes all the elements from invoking collection?', 'Collections', 1, TRUE, 'clear()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (19, 'Which of these interface declares core method that all collections will have?', 'Collections', 1, TRUE, 'Collection');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (20, 'Which of these interface handle sequences?', 'Collections', 1, TRUE, 'List');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (21, 'Which of these interface is not a part of Java’s collection framework?', 'Collections', 1, TRUE, 'SortedList');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (22, 'Which of these interface must contain a unique element?', 'Collections', 1, TRUE, 'Set');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (23, 'Which of these is Basic interface that all other interface inherits?', 'Collections', 1, TRUE, 'Collection');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (24, 'Which of these is an incorrect form of using method max() to obtain maximum element?', 'Collections', 1, TRUE, 'max(Comparator comp)');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (25, 'Which of these methods sets every element of a List to a specified object?', 'Collections', 1, TRUE, 'fill()');


INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (26, 'Difference between String Buffer and String Builder.', 'Strings', 2, FALSE, 'StringBuffer is synchronized. Where as StringBuilder is not synchronized');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (27, 'Which of these operators can be used to concatenate two or more String objects?', 'Strings', 2, TRUE, '+');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (28, 'Which of these method of class String is used to obtain length of String object?', 'Strings', 2, TRUE, 'length()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (29, 'Which of these method of class String is used to extract a single character from a String object?', 'Strings', 2, TRUE, 'charAt()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (30, 'Which of these constructors is used to create an empty String object?', 'Strings', 2, TRUE, 'String()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (31, 'Which of these method of class String is used to compare two String objects for their equality?', 'Strings', 2, TRUE, 'equals()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (32, 'Which of these methods is used to compare a specific region inside a string with another specific region in another string?
', 'Strings', 2, TRUE, 'regionMatches()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (33, 'Which of these method of class String is used to check weather a given object starts with a particular string literal?', 'Strings', 2, TRUE, 'startsWith()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (34, 'What is the value returned by function compareTo() if the invoking string is less than the string compared?', 'Strings', 2, TRUE, 'value less than zero');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (35, 'Which of these data type value is returned by equals() method of String class?', 'Strings', 2, TRUE, 'boolean');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (36, 'Which of these method of class String is used to extract a substring from a String object?', 'Strings', 2, TRUE, 'substring()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (37, 'Which of these method of class String is used to remove leading and trailing whitespaces?', 'Strings', 2, TRUE, 'trim()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (38, 'Which of these class is used to create an object whose character sequence is mutable?', 'Strings', 2, TRUE, 'StringBuffer()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (39, 'Which of these method of class StringBuffer is used to concatenate the string representation to the end of invoking string?', 'Strings', 2, TRUE, 'append()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (40, 'Which of these method of class StringBuffer is used to find the length of current character sequence?', 'Strings', 2, TRUE, 'length()');
INSERT INTO QUESTIONS(QUES_ID, QUESTION, TOPICS, DIFFICULTY, ISMCQ, ANSWER) VALUES (41, 'Which of these method of class StringBuffer is used to reverse sequence of characters?', 'Strings', 2, TRUE, 'reverse()');



INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (1, 'Encapsulation');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (1, 'Multiple Inheritence');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (1, 'Procedure Oriented');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (2, 'int');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (2, 'String');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (2, 'long');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (4, 'public static void main(String[] args)');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (4, 'public void main(String[] args)');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (4, 'public static void main(String args)');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (5, 'Compilation Error');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (5, '35');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (5, '10 25');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (6, 'if(b1.equals(b2))');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (6, 'if(b1 == b2)');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (6, 'if(b1 = b2)');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (7, '13');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (7, '32');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (7, '23');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (8, '8');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (8, '9');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (8, 'None');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (9, 'Runtime Error');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (9, 'Compilation error');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (9, 'Runs successfully');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (10, 'Compilation error');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (10, 'Run time error');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (10, 'Runs successfully');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (11, 'private');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (11, 'public');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (11, 'All the above');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (12, 'Student student = new Student()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (12, 'Student student = Student()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (12, 'Student student = new Student');


INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (14, 'Ordering');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (14, 'Manipulation');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (14, 'Inheritance');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (15, 'java.lang');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (15, 'java.object');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (15, 'java.util');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (16, 'Queue');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (16, 'ArrayList');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (16, 'HashMap');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (17, 'A group of Classes');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (17, 'A group of objects');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (17, 'A group of variables');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (18, 'close()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (18, 'reset()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (18, 'clear()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (19, 'Collection');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (19, 'Objects');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (19, 'ArrayList');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (20, 'List');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (20, 'Stack');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (20, 'Queue');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (21, 'List');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (21, 'SortedList');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (21, 'Arrays');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (22, 'List');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (22, 'Queue');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (22, 'Set');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (23, 'List');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (23, 'Collection');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (23, 'ArrayList');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (24, 'max(Comparator comp)');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (24, 'max(String comp)');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (24, 'max(ArrayList comp)');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (25, 'full()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (25, 'complete()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (25, 'fill()');


INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (27, '+');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (27, 'concat()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (27, 'join()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (28, 'length');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (28, 'length()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (28, 'size()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (29, 'valueAt()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (29, 'charat()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (29, 'charAt()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (30, 'text()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (30, 'string()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (30, 'String()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (31, 'equals()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (31, 'Equals()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (31, '==');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (32, 'regionMatch()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (32, 'regionMatches()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (32, 'match()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (33, 'startsWith()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (33, 'startswith()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (33, 'beginWith()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (34, 'value less than one');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (34, 'value greater than zero');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (34, 'value less than zero');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (35, 'String');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (35, 'boolean');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (35, 'bool');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (36, 'substring()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (36, 'Substring()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (36, 'string()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (37, 'cut()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (37, 'remove()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (37, 'trim()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (38, 'StringBuffer()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (38, 'StringBuilder()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (38, 'String()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (39, 'apend()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (39, 'append');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (39, 'append()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (40, 'length()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (40, 'length');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (40, 'size()');

INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (41, 'replace()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (41, 'reverse()');
INSERT INTO MCQCHOICES(QUES_ID_FK, CHOICE) VALUES (41, 'turn()');















