package util
{
	public class Util
	{
		public function Util()
		{
		}
		public static function StringBoolean(texto:String):Boolean
		{
			if(texto=='S')
			{
				return true;
			}
			else if(texto=='N')
			{
				return false;	
			}	
			return null;
		}		
		
		public static function getMonths(date1:Date,date2:Date):Number{
			var yearDiff = getYears(date1,date2);
			var monthDiff = date1.getMonth() - date2.getMonth();
			if(monthDiff < 0){
				monthDiff += 12;
			}
			if(date1.getDate()< date2.getDate()){
				monthDiff -=1;
			}
			return 12 *yearDiff + monthDiff;
		}			
		
		private static function getYears(date1:Date,date2:Date):Number{
			return Math.floor(getDays(date1,date2)/365);
		}
		
		private static function getDays(date1:Date,date2:Date):Number{
			return Math.floor(getHours(date1,date2)/24);
		}
		private static function getHours(date1:Date,date2:Date):Number{
			return Math.floor(getMinutes(date1,date2)/60);
		}			
		private static function getMinutes(date1:Date,date2:Date):Number{
			return Math.floor(getSeconds(date1,date2)/60);
		}
		private static function getSeconds(date1:Date,date2:Date):Number{
			return Math.floor(compareDates(date1,date2)/1000);
		}
		private static function compareDates(date1:Date,date2:Date):Number{
			return date1.getTime() - date2.getTime();
		}
		
		
		
	}
}