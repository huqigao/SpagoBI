/**
 * SpagoBI - The Business Intelligence Free Platform
 *
 * Copyright (C) 2004 - 2008 Engineering Ingegneria Informatica S.p.A.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 * 
 **/
 
/**
  * Object name 
  * 
  * see ...
  *  - docs: http://www.fusioncharts.com/free/docs/
  * 
  * 
  * Public Properties
  * 
  * [list]
  * 
  * 
  * Public Methods
  * 
  *  [list]
  * 
  * 
  * Public Events
  * 
  *  [list]
  * 
  * Authors
  * 
  * - Andrea Gioia (andrea.gioia@eng.it)
  */

Ext.ns("Sbi.chart");


Sbi.chart.FusionFreeChart = function(config) {	
	Sbi.chart.FusionFreeChart.superclass.constructor.call(this, config);
};

Ext.extend(Sbi.chart.FusionFreeChart, Ext.FlashComponent, {
    
   
    // -- public methods -------------------------------------------------------------------
    
   
    
    
    // -- private methods ------------------------------------------------------------------
    
	initComponent : function(){
		Sbi.chart.FusionFreeChart.superclass.initComponent.call(this);
    	if(!this.url){
        	this.url = Sbi.chart.FusionFreeChart.CHART_URL;
    	}
    	   	
    	this.autoScroll = true;
    	
    	this.flashVars = {
    		scaleMode: 'exactfit'
    	};
	}

	,  onRender : function(ct, position){
		
		
		this.flashVars.chartWidth = ct.getWidth();
		this.flashVars.chartHeight = ct.getHeight();
		this.flashVars.dataXML = this.encodeDataXML(
				"<graph caption='Fusion Free Chart' xAxisName='Month' yAxisName='Units' showNames='1' decimalPrecision='0' formatNumberScale='0'><set name='Jan' value='462' color='AFD8F8' /><set name='Feb' value='857' color='F6BD0F' /><set name='Mar' value='671' color='8BBA00' /><set name='Apr' value='494' color='FF8E46'/><set name='May' value='761' color='008E8E'/><set name='Jun' value='960' color='D64646'/><set name='Jul' value='629' color='8E468E'/><set name='Aug' value='622' color='588526'/><set name='Sep' value='376' color='B3AA00'/><set name='Oct' value='494' color='008ED6'/><set name='Nov' value='761' color='9D080D'/><set name='Dec' value='960' color='A186BE'/></graph>"
		);
		Sbi.chart.FusionFreeChart.superclass.onRender.call(this, ct, position);
		
        //this.testFn.defer(2000, this);
	}
	
	//This function :
	//fixes the double quoted attributes to single quotes
	//Encodes all quotes inside attribute values
	//Encodes % to %25 and & to %26;
	, encodeDataXML: function(strDataXML){
		
			var regExpReservedCharacters=["\\$","\\+"];
			var arrDQAtt=strDataXML.match(/=\s*\".*?\"/g);
			if (arrDQAtt){
				for(var i=0;i<arrDQAtt.length;i++){
					var repStr=arrDQAtt[i].replace(/^=\s*\"|\"$/g,"");
					repStr=repStr.replace(/\'/g,"%26apos;");
					var strTo=strDataXML.indexOf(arrDQAtt[i]);
					var repStrr="='"+repStr+"'";
					var strStart=strDataXML.substring(0,strTo);
					var strEnd=strDataXML.substring(strTo+arrDQAtt[i].length);
					var strDataXML = strStart+repStrr+strEnd;
				}
			}
			
			strDataXML=strDataXML.replace(/\"/g,"%26quot;");
			strDataXML=strDataXML.replace(/%(?![\da-f]{2}|[\da-f]{4})/ig,"%25");
			strDataXML=strDataXML.replace(/\&/g,"%26");

			return strDataXML;

	}
	
	, testFn: function() {
    	this.swf.setDataXML("<graph caption='Monthly Unit Sales' xAxisName='Month' yAxisName='Units' showNames='1' decimalPrecision='0' formatNumberScale='0'><set name='Jan' value='462' color='AFD8F8' /><set name='Feb' value='857' color='F6BD0F' /><set name='Mar' value='671' color='8BBA00' /><set name='Apr' value='494' color='FF8E46'/><set name='May' value='761' color='008E8E'/><set name='Jun' value='960' color='D64646'/><set name='Jul' value='629' color='8E468E'/><set name='Aug' value='622' color='588526'/><set name='Sep' value='376' color='B3AA00'/><set name='Oct' value='494' color='008ED6'/><set name='Nov' value='761' color='9D080D'/><set name='Dec' value='960' color='A186BE'/></graph>");
    }
    
});





Sbi.chart.FusionFreeChart.CHART_URL = '/SpagoBIConsoleEngine/swf/fusionchartfree/FCF_Column3D.swf';