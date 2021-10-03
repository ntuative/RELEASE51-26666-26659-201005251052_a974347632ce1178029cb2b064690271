package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1645:int = 5;
      
      public static const const_1545:int = 113;
      
      public static const const_1623:int = 29;
      
      public static const const_1666:int = 0;
      
      public static const const_1482:int = 102;
      
      public static const const_1631:int = 25;
      
      public static const const_1636:int = 20;
      
      public static const const_1594:int = 116;
      
      public static const const_1538:int = 114;
      
      public static const const_1583:int = 101;
      
      public static const const_1629:int = 108;
      
      public static const const_1692:int = 112;
      
      public static const const_1621:int = 100;
      
      public static const const_1536:int = 24;
      
      public static const const_1300:int = 10;
      
      public static const const_1684:int = 111;
      
      public static const const_1568:int = 23;
      
      public static const const_1491:int = 26;
      
      public static const const_1396:int = 2;
      
      public static const const_1622:int = 22;
      
      public static const const_1620:int = 17;
      
      public static const const_1649:int = 18;
      
      public static const const_1612:int = 3;
      
      public static const const_1591:int = 109;
      
      public static const const_1296:int = 1;
      
      public static const const_1511:int = 103;
      
      public static const const_1680:int = 11;
      
      public static const const_1514:int = 28;
      
      public static const const_1551:int = 104;
      
      public static const const_1577:int = 13;
      
      public static const const_1553:int = 107;
      
      public static const const_1606:int = 27;
      
      public static const const_1559:int = 118;
      
      public static const const_1589:int = 115;
      
      public static const const_1487:int = 16;
      
      public static const const_1474:int = 19;
      
      public static const const_1615:int = 4;
      
      public static const const_1638:int = 105;
      
      public static const const_1533:int = 117;
      
      public static const const_1528:int = 119;
      
      public static const const_1569:int = 106;
      
      public static const const_1566:int = 12;
      
      public static const const_1571:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1296:
            case const_1300:
               return "banned";
            case const_1396:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
