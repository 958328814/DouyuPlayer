package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   
   public function F_cimagl() : void
   {
      var _loc2_:* = 0;
      var _loc3_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc3_ = lf64(_loc2_ + 8);
      st0 = _loc3_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}