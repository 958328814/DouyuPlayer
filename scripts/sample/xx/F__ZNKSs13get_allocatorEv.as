package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNKSs13get_allocatorEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNSaIcEC1ERKS_();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
