package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNKSs7compareERKSs() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc4_:int = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs4sizeEv();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = eax;
      _loc2_ = int(_loc2_ - 16);
      _loc10_ = li32(_loc3_ + 4);
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs4sizeEv();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs7_M_dataEv();
      _loc2_ = int(_loc2_ + 16);
      _loc8_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc10_,_loc2_);
      _loc7_ = _loc9_;
      if(uint(_loc9_) >= uint(_loc11_))
      {
         _loc7_ = _loc11_;
      }
      ESP = _loc2_;
      F__ZNKSs4dataEv();
      _loc2_ = int(_loc2_ + 16);
      var _loc6_:int = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc7_,_loc2_ + 8);
      si32(_loc6_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      _loc5_ = int(_loc11_ - _loc9_);
      ESP = _loc2_;
      F_memcmp();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      if(_loc4_ != 0)
      {
         _loc5_ = _loc4_;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
