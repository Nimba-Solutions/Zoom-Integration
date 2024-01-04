public class ServiceZoomMeetingRegistration {
	public class Object_Z {
		public String uuid {get;set;} 
		public Integer id {get;set;} 
		public String host_id {get;set;} 
		public String topic {get;set;} 
		public Integer type {get;set;} 
		public String start_time {get;set;} 
		public Integer duration {get;set;} 
		public String timezone {get;set;} 
		public List<Occurrences> occurrences {get;set;} 
		public Registrant registrant {get;set;} 

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
						} else if (text == 'occurrences') {
							occurrences = arrayOfOccurrences(parser);
						} else if (text == 'registrant') {
							registrant = new Registrant(parser);
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

		public Occurrences(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'occurrence_id') {
							occurrence_id = parser.getText();
						} else if (text == 'start_time') {
							start_time = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Occurrences consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Registrant {
		public String id {get;set;} 
		public String first_name {get;set;} 
		public String last_name {get;set;} 
		public String email {get;set;} 
		public String address {get;set;} 
		public String city {get;set;} 
		public String country {get;set;} 
		public String zip {get;set;} 
		public String state {get;set;} 
		public String phone {get;set;} 
		public String industry {get;set;} 
		public String org {get;set;} 
		public String job_title {get;set;} 
		public String purchasing_time_frame {get;set;} 
		public String role_in_purchase_process {get;set;} 
		public String no_of_employees {get;set;} 
		public String comments {get;set;} 
		public List<Custom_questions> custom_questions {get;set;} 
		public String status {get;set;} 
		public String join_url {get;set;} 
		public Integer participant_pin_code {get;set;} 

		public Registrant(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'first_name') {
							first_name = parser.getText();
						} else if (text == 'last_name') {
							last_name = parser.getText();
						} else if (text == 'email') {
							email = parser.getText();
						} else if (text == 'address') {
							address = parser.getText();
						} else if (text == 'city') {
							city = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'zip') {
							zip = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'phone') {
							phone = parser.getText();
						} else if (text == 'industry') {
							industry = parser.getText();
						} else if (text == 'org') {
							org = parser.getText();
						} else if (text == 'job_title') {
							job_title = parser.getText();
						} else if (text == 'purchasing_time_frame') {
							purchasing_time_frame = parser.getText();
						} else if (text == 'role_in_purchase_process') {
							role_in_purchase_process = parser.getText();
						} else if (text == 'no_of_employees') {
							no_of_employees = parser.getText();
						} else if (text == 'comments') {
							comments = parser.getText();
						} else if (text == 'custom_questions') {
							custom_questions = arrayOfCustom_questions(parser);
						} else if (text == 'status') {
							status = parser.getText();
						} else if (text == 'join_url') {
							join_url = parser.getText();
						} else if (text == 'participant_pin_code') {
							participant_pin_code = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Registrant consuming unrecognized property: '+text);
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

	public ServiceZoomMeetingRegistration(JSONParser parser) {
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
						System.debug(LoggingLevel.WARN, 'ServiceZoomMeetingRegistration consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Payload {
		public String account_id {get;set;} 
		public Object_Z object_Z {get;set;} // in json: object

		public Payload(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'account_id') {
							account_id = parser.getText();
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
	
	public class Custom_questions {
		public String title {get;set;} 
		public String value {get;set;} 

		public Custom_questions(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'title') {
							title = parser.getText();
						} else if (text == 'value') {
							value = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Custom_questions consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static ServiceZoomMeetingRegistration parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new ServiceZoomMeetingRegistration(parser);
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
	




    private static List<Custom_questions> arrayOfCustom_questions(System.JSONParser p) {
        List<Custom_questions> res = new List<Custom_questions>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Custom_questions(p));
        }
        return res;
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