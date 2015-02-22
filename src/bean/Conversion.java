package bean;

public class Conversion
  {
      String[] unitdo ={"", " One", " Two", " Three", " Four", " Five",
         " Six", " Seven", " Eight", " Nine", " Ten", " Eleven", " Twelve",
         " Thirteen", " Fourteen", " Fifteen",  " Sixteen", " Seventeen", 
         " Eighteen", " Nineteen"};
      String[] tens =  {"", "Ten", " Twenty", " Thirty", " Forty", " Fifty",
         " Sixty", " Seventy", " Eighty"," Ninety"};
      String[] digit = {"", " Hundred", " Thousand", " Lakh", " Crore"};
     int r;


      
      int numberCount(int num)
      {
          int cnt=0;

          while (num>0)
          {
            r = num%10;
            cnt++;
            num = num / 10;
          }

            return cnt;
      }


      

      String twonum(int numq)
      {
           int numr, nq;
           String ltr=" ";

           nq = numq / 10;
           numr = numq % 10;

           if (numq>19)
             {
           ltr=ltr+tens[nq]+unitdo[numr];
             }
           else
             {
           ltr = ltr+unitdo[numq];
             }

           return ltr;
      }

    

      String threenum(int numq)
      {
             int numr, nq;
             String ltr = "";

             nq = numq / 100;
             numr = numq % 100;

             if (numr == 0)
              {
              ltr = ltr + unitdo[nq]+digit[1];
               }
             else
              {
              ltr = ltr +unitdo[nq]+digit[1]+" and"+twonum(numr);
              }
             return ltr;

      }

}

 