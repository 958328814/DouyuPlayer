package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___ulp_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 8);
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      _loc7_ = _loc1_ & 2146435072;
      _loc6_ = _loc7_ + -54525952;
      if(_loc6_ >= 1)
      {
         _loc7_ = 0;
      }
      else
      {
         _loc5_ = int(54525952 - _loc7_) >> 20;
         if(int(54525952 - _loc7_) <= 20971519)
         {
            _loc6_ = 524288 >>> _loc5_;
            _loc7_ = 0;
         }
         else
         {
            _loc6_ = 0;
            _loc7_ = 1;
            if(int(_loc5_ + -20) <= 30)
            {
               _loc7_ = 1 << int(51 - _loc5_);
               _loc6_ = 0;
            }
         }
      }
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      si32(_loc6_,_loc1_);
      si32(_loc7_,_loc3_ - 8);
      var _loc4_:* = lf64(_loc3_ - 8);
      st0 = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
