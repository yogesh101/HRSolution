package bean;

public class Convert {


	      public static void main(String[] args) throws Exception
	      {

	       }
	public static String con(String salary)
	{
	           int len, q=0, r=0;
	          String ltr = " ";
	          String Str = "Rupees";
	         Conversion n = new Conversion();
	          int num = Integer.parseInt(salary);

	         if (num <= 0) return "Zero or Negative number not for conversion";

	          while (num>0)
	          {

	             len = n.numberCount(num);

	             

	             switch (len)

	             {
	                  case 8:
	                          q=num/10000000;
	                          r=num%10000000;
	                          ltr = n.twonum(q);
	                          Str = Str+ltr+n.digit[4];
	                          num = r;
	                          break;

	                  case 7:
	                  case 6:
	                          q=num/100000;
	                          r=num%100000;
	                          ltr = n.twonum(q);
	                          Str = Str+ltr+n.digit[3];
	                          num = r;
	                          break;

	                  case 5:
	                  case 4:

	                           q=num/1000;
	                           r=num%1000;
	                           ltr = n.twonum(q);
	                           Str= Str+ltr+n.digit[2];
	                           num = r;
	                           break;

	                  case 3:


	                            if (len == 3)
	                                r = num;
	                            ltr = n.threenum(r);
	                            Str = Str + ltr;
	                            num = 0;
	                            break;

	                  case 2:

	                           ltr = n.twonum(num);
	                           Str = Str + ltr;
	                           num=0;
	                           break;

	                  case 1:
	                           Str = Str + n.unitdo[num];
	                           num=0;
	                           break;
	                  default:

	                          num=0;
	                         return "Exceeding Crore....No conversion";
	                          


	              }
	                          if (num==0)
	                          return Str+" Only";
	            }
	          return "HII";
	         }

	      }


