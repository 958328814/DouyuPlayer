package sample.xx_scii_2E_o_3A_6BE96A82_2D_6716_2D_46E9_2D_B835_2D_B5FC386B3A7E
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F__ascii_mbrtowc() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc5_ = li32(_loc3_ + 4);
      if(_loc5_ != 0)
      {
         _loc1_ = -2;
         if(li32(_loc3_ + 8) != 0)
         {
            _loc1_ = si8(li8(_loc5_));
            if(_loc1_ <= -1)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc1_ = -1;
            }
            else
            {
               _loc5_ = li32(_loc3_);
               _loc1_ = _loc1_ & 255;
               if(_loc5_ != 0)
               {
                  si32(_loc1_,_loc5_);
               }
               _loc5_ = 1;
               if(_loc1_ == 0)
               {
                  _loc5_ = 0;
               }
               _loc1_ = _loc5_ & 1;
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
