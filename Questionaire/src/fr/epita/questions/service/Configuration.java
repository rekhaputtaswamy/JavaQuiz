package fr.epita.questions.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Loads the data fom application properties file
 * 
 * @author rekhap
 *
 */
public class Configuration {
	private Properties properties;
	private static Configuration config;

	private Configuration() {
		this.properties = new Properties();
		String confLocation = System.getProperty("conf.location", "application.properties");

		try (InputStream is = new FileInputStream(new File(confLocation))) {
			properties.load(is);

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public static Configuration getInstance() {
		if (config == null) {
			config = new Configuration();
		}

		return config;
	}

	public String getConfigurationValue(String configKey) {
		return properties.getProperty(configKey);
	}

}
