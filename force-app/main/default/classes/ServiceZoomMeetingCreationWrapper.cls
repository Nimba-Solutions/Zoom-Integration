public class ServiceZoomMeetingCreationWrapper {
	public class Recurrence {
		public Integer type {get;set;} 
		public Integer repeat_interval {get;set;} 
		public Integer end_times {get;set;} 

		public Recurrence(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'type') {
							type = parser.getIntegerValue();
						} else if (text == 'repeat_interval') {
							repeat_interval = parser.getIntegerValue();
						} else if (text == 'end_times') {
							end_times = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Recurrence consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Object_Z {
		public String uuid {get;set;} 
		public Integer id {get;set;} 
		public String host_id {get;set;} 
		public String topic {get;set;} 
		public Integer type {get;set;} 
		public String start_time {get;set;} 
		public Integer duration {get;set;} 
		public String timezone {get;set;} 
		public String join_url {get;set;} 
		public String password {get;set;} 
		public String pmi {get;set;} 
		public List<Occurrences> occurrences {get;set;} 
		public Settings settings {get;set;} 
		public Recurrence recurrence {get;set;} 

		public Object_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'uuid') {
							uuid = parser.getText();
						} else if (text == 'id') {
							id = parser.getIntegerValue();
						} else if (text == 'host_id') {
							host_id = parser.getText();
						} else if (text == 'topic') {
							topic = parser.getText();
						} else if (text == 'type') {
							type = parser.getIntegerValue();
						} else if (text == 'start_time') {
							start_time = parser.getText();
						} else if (text == 'duration') {
							duration = parser.getIntegerValue();
						} else if (text == 'timezone') {
							timezone = parser.getText();
						} else if (text == 'join_url') {
							join_url = parser.getText();
						} else if (text == 'password') {
							password = parser.getText();
						} else if (text == 'pmi') {
							pmi = parser.getText();
						} else if (text == 'occurrences') {
							occurrences = arrayOfOccurrences(parser);
						} else if (text == 'settings') {
							settings = new Settings(parser);
						} else if (text == 'recurrence') {
							recurrence = new Recurrence(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Object_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Occurrences {
		public String occurrence_id {get;set;} 
		public String start_time {get;set;} 
		public Integer duration {get;set;} 
		public String status {get;set;} 

		public Occurrences(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'occurrence_id') {
							occurrence_id = parser.getText();
						} else if (text == 'start_time') {
							start_time = parser.getText();
						} else if (text == 'duration') {
							duration = parser.getIntegerValue();
						} else if (text == 'status') {
							status = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Occurrences consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Payload {
		public String account_id {get;set;} 
		public String operator {get;set;} 
		public String operator_id {get;set;} 
		public String operation {get;set;} 
		public Object_Z object_Z {get;set;} // in json: object

		public Payload(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'account_id') {
							account_id = parser.getText();
						} else if (text == 'operator') {
							operator = parser.getText();
						} else if (text == 'operator_id') {
							operator_id = parser.getText();
						} else if (text == 'operation') {
							operation = parser.getText();
						} else if (text == 'object') {
							object_Z = new Object_Z(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Payload consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String event {get;set;} 
	public Long event_ts {get;set;} 
	public Payload payload {get;set;} 

	public ServiceZoomMeetingCreationWrapper(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'event') {
						event = parser.getText();
					} else if (text == 'event_ts') {
						event_ts = parser.getLongValue();
					} else if (text == 'payload') {
						payload = new Payload(parser);
					} else {
						System.debug(LoggingLevel.WARN, 'WrapperClassforCreatedMeeting consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Settings {
		public Boolean use_pmi {get;set;} 
		public String alternative_hosts {get;set;} 

		public Settings(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'use_pmi') {
							use_pmi = parser.getBooleanValue();
						} else if (text == 'alternative_hosts') {
							alternative_hosts = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Settings consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static ServiceZoomMeetingCreationWrapper parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new ServiceZoomMeetingCreationWrapper(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	



    private static List<Occurrences> arrayOfOccurrences(System.JSONParser p) {
        List<Occurrences> res = new List<Occurrences>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Occurrences(p));
        }
        return res;
    }





}