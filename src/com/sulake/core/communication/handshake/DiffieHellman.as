package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1273:BigInteger;
      
      private var var_624:BigInteger;
      
      private var var_1539:BigInteger;
      
      private var var_1540:BigInteger;
      
      private var var_1992:BigInteger;
      
      private var var_1943:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1273 = param1;
         var_1539 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1992.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1540 = new BigInteger();
         var_1540.fromRadix(param1,param2);
         var_1992 = var_1540.modPow(var_624,var_1273);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1943.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1273.toString() + ",generator: " + var_1539.toString() + ",secret: " + param1);
         var_624 = new BigInteger();
         var_624.fromRadix(param1,param2);
         var_1943 = var_1539.modPow(var_624,var_1273);
         return true;
      }
   }
}
