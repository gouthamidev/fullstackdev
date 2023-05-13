public class JSONExamples {
    //Desrialisation -- Wrapper
    	public String status;
	public List<Data> data;

	public class Data {
		public String id;
		public String empname;
		public Integer empsalary;
		public Integer empage;
		public String empbloodgroup;
	}
    //Convertinf JSON String into original data/objects/class type
	//Standardway of parsing
    public static void jsoneg2(){
          staticresource st=[Select id,name,body from staticresource where name = 'JSONDeserialise'];
        //JSON.deserialize(jsonString, System.apexType);
    }
    
    
    //Manual parsing
    public static void jsoneg1(){
        staticresource st=[Select id,name,body from staticresource where name = 'Json1'];
        System.debug('>>>Body'+st.body.tostring());
        JSONParser parse = JSON.createParser(st.body.tostring());
        parse.nextToken();
        system.debug('>>>Token1'+parse.nextToken());
        parse.getCurrentName();
        system.debug('>>>CurrentName1'+parse.getCurrentName());
        parse.nextToken();  
        system.debug('>>>Value'+parse.gettext());
        system.debug('>>>Token2'+parse.nextToken());  
        parse.getCurrentName();
        system.debug('>>>CurrentName2'+parse.getCurrentName());
        parse.nextToken();
        system.debug('>>>Token3'+parse.nextToken());
    }
  



	
	/*public static JSON2Apex parse(String json) {
		return (JSON2Apex) System.JSON.deserialize(json, JSON2Apex.class);
	
}*/
}