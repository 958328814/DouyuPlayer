package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA.*;
   
   public function F___printf_out() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc1_ + 36);
      _loc9_ = 0;
      _loc8_ = li32(_loc3_ + 12);
      _loc7_ = li32(_loc3_);
      _loc6_ = _loc9_;
      if(_loc10_ == 0)
      {
         _loc5_ = li32(_loc1_ + 4);
         _loc6_ = 0;
         if(_loc5_ > _loc8_)
         {
            var _loc4_:* = li32(_loc1_ + 56);
            _loc2_ = int(_loc2_ - 16);
            si32(int(_loc5_ - _loc8_),_loc2_ + 4);
            si32(_loc7_,_loc2_);
            _loc6_ = 1;
            if(_loc4_ != 48)
            {
               _loc6_ = 0;
            }
            _loc10_ = _loc6_ & 1;
            si32(_loc10_,_loc2_ + 8);
            ESP = _loc2_;
            F___printf_pad();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
         }
      }
      _loc10_ = li32(_loc7_);
      _loc10_ = li16(_loc10_ + 12);
      _loc10_ = _loc10_ & 64;
      if(_loc10_ == 0)
      {
         if(_loc8_ != 0)
         {
            si32(li32(_loc3_ + 8),li32(_loc7_ + 80));
            si32(_loc8_,li32(_loc7_ + 80) + 4);
            _loc10_ = li32(_loc7_ + 12);
            _loc10_ = int(_loc10_ + _loc8_);
            si32(_loc10_,_loc7_ + 12);
            _loc10_ = li32(_loc7_ + 80);
            _loc10_ = int(_loc10_ + 8);
            si32(_loc10_,_loc7_ + 80);
            _loc10_ = li32(_loc7_ + 8);
            _loc10_ = int(_loc10_ + 1);
            si32(_loc10_,_loc7_ + 8);
            _loc9_ = _loc8_;
            if(_loc10_ >= 8)
            {
               _loc2_ = int(_loc2_ - 16);
               _loc10_ = int(_loc7_ + 4);
               si32(_loc10_,_loc2_ + 4);
               si32(li32(_loc7_),_loc2_);
               ESP = _loc2_;
               F___sfvwrite();
               _loc2_ = int(_loc2_ + 16);
               _loc10_ = int(_loc7_ + 16);
               si32(_loc10_,_loc7_ + 80);
               si32(_loc10_,_loc7_ + 4);
               si32(0,_loc7_ + 12);
               si32(0,_loc7_ + 8);
               _loc9_ = _loc8_;
            }
         }
      }
      _loc9_ = int(_loc9_ + _loc6_);
      _loc10_ = li32(_loc1_ + 36);
      if(_loc10_ != 0)
      {
         _loc6_ = li32(_loc1_ + 4);
         if(_loc6_ > _loc8_)
         {
            _loc4_ = li32(_loc1_ + 56);
            _loc2_ = int(_loc2_ - 16);
            si32(int(_loc6_ - _loc8_),_loc2_ + 4);
            si32(_loc7_,_loc2_);
            _loc8_ = 1;
            if(_loc4_ != 48)
            {
               _loc8_ = 0;
            }
            _loc10_ = _loc8_ & 1;
            si32(_loc10_,_loc2_ + 8);
            ESP = _loc2_;
            F___printf_pad();
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
            _loc9_ = int(_loc10_ + _loc9_);
         }
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
