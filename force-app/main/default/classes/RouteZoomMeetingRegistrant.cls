@RestResource(urlMapping='/MeetingRegistrant/*')
global with sharing class RouteZoomMeetingRegistrant {
    
    @HttpPost
    global static String meetingRegistrantCreation(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String registrantCreationRequestBody=req.requestBody.toString();
        if(string.isNotBlank(registrantCreationRequestBody)){
            
        }else{
            
        }
        
        return '';
    }
}