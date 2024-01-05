public class ServiceZoomMeetingParticipantJoin {
	public String event {get;set;} 
	public Long event_ts {get;set;} 
	public Payload payload {get;set;} 

	public ServiceZoomMeetingParticipantJoin(JSONParser parser) {
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
						System.debug(LoggingLevel.WARN, 'ServiceZoomMeetingParticipantJoi consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Participant {
		public String user_id {get;set;} 
		public String user_name {get;set;} 
		public String id {get;set;} 
		public String participant_uuid {get;set;} 
		public String date_time {get;set;} 
		public String email {get;set;} 
		public String registrant_id {get;set;} 
		public String participant_user_id {get;set;} 
		public String customer_key {get;set;} 
		public String phone_number {get;set;} 

		public Participant(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'user_id') {
							user_id = parser.getText();
						} else if (text == 'user_name') {
							user_name = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'participant_uuid') {
							participant_uuid = parser.getText();
						} else if (text == 'date_time') {
							date_time = parser.getText();
						} else if (text == 'email') {
							email = parser.getText();
						} else if (text == 'registrant_id') {
							registrant_id = parser.getText();
						} else if (text == 'participant_user_id') {
							participant_user_id = parser.getText();
						} else if (text == 'customer_key') {
							customer_key = parser.getText();
						} else if (text == 'phone_number') {
							phone_number = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Participant consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Object_Z {
		public String id {get;set;} 
		public String uuid {get;set;} 
		public String host_id {get;set;} 
		public String topic {get;set;} 
		public Integer type {get;set;} 
		public String start_time {get;set;} 
		public String timezone {get;set;} 
		public Integer duration {get;set;} 
		public Participant participant {get;set;} 

		public Object_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'uuid') {
							uuid = parser.getText();
						} else if (text == 'host_id') {
							host_id = parser.getText();
						} else if (text == 'topic') {
							topic = parser.getText();
						} else if (text == 'type') {
							type = parser.getIntegerValue();
						} else if (text == 'start_time') {
							start_time = parser.getText();
						} else if (text == 'timezone') {
							timezone = parser.getText();
						} else if (text == 'duration') {
							duration = parser.getIntegerValue();
						} else if (text == 'participant') {
							participant = new Participant(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Object_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
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
	
	
	public static ServiceZoomMeetingParticipantJoin parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new ServiceZoomMeetingParticipantJoin(parser);
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
}