package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_str_2E_o_3A_81733692_2D_DB2E_2D_43DB_2D_A578_2D_19A73F9BE531.*;
   
   public function F___printf_arginfo_str() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str1,_loc2_ + 12);
         si32(112,_loc2_ + 8);
         si32(L__2E_str,_loc2_ + 4);
         si32(___func___2E_2565,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc5_ = li32(_loc3_);
      _loc1_ = li32(_loc5_ + 24);
      _loc4_ = 16;
      if(_loc1_ == 0)
      {
         _loc4_ = 16;
         if(li32(_loc5_ + 8) != 67)
         {
            _loc4_ = 8;
         }
      }
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc4_,_loc1_);
      eax = 1;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
