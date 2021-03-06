package sample.xx
{
   import flash.utils.ByteArray;
   
   function retargetSWF() : ByteArray
   {
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = null;
      var _loc1_:int = 0;
      var _loc2_:int = 0;
      if(!CModule.rootSprite)
      {
         throw new Error("specify a rootSprite using \"CModule.rootSprite = ...\" before spawning threads");
      }
      if(!CModule.rootSprite.loaderInfo)
      {
         throw new Error("loaderinfo on rootSprite was null");
      }
      if(!CModule.rootSprite.loaderInfo.bytes)
      {
         throw new Error("loaderinfo.bytes on rootSprite was null");
      }
      var _loc5_:ByteArray = CModule.rootSprite.loaderInfo.bytes;
      var _loc6_:int = ((_loc5_[8] >> 3) * 4 + 5 + 7 >> 3) + 12;
      var _loc10_:ByteArray = new ByteArray();
      _loc10_.endian = "littleEndian";
      _loc10_.writeBytes(_loc5_,_loc6_);
      if(_loc5_[0] != 70)
      {
         throw new Error("loaderInfo.bytes is compressed");
      }
      var _loc11_:ByteArray = new ByteArray();
      _loc11_.endian = "littleEndian";
      _loc10_.position = 0;
      while(_loc10_.bytesAvailable)
      {
         var _loc12_:int = _loc10_.readUnsignedShort();
         _loc4_ = _loc12_ >> 6;
         _loc7_ = _loc12_ & 63;
         if(_loc7_ == 63)
         {
            _loc7_ = int(_loc10_.readInt());
         }
         if(_loc4_ == 76)
         {
            _loc8_ = new ByteArray();
            _loc8_.endian = "littleEndian";
            _loc1_ = 0;
            _loc2_ = _loc10_.readUnsignedShort();
            _loc8_.writeShort(_loc2_);
            while(true)
            {
               _loc2_--;
               if(!_loc2_)
               {
                  break;
               }
               var _loc9_:int = _loc10_.readUnsignedShort();
               _loc8_.writeShort(_loc9_);
               if(_loc9_ == 0)
               {
                  _loc8_.writeUTFBytes("C_Run.AlcWorkerSprite");
                  _loc8_.writeByte(0);
                  while(_loc10_.readByte())
                  {
                  }
               }
               else
               {
                  while(true)
                  {
                     var _loc3_:int = _loc10_.readByte();
                     _loc8_.writeByte(_loc3_);
                     if(_loc3_)
                     {
                        continue;
                     }
                     break;
                  }
               }
            }
            _loc7_ = int(_loc8_.length);
         }
         else
         {
            _loc8_ = _loc10_;
            _loc1_ = _loc10_.position;
            _loc10_.position = _loc10_.position + _loc7_;
         }
         if(_loc7_ < 63)
         {
            _loc11_.writeShort(_loc4_ << 6 | _loc7_);
         }
         else
         {
            _loc11_.writeShort(_loc4_ << 6 | 63);
            _loc11_.writeInt(_loc7_);
         }
         _loc11_.writeBytes(_loc8_,_loc1_,_loc7_);
      }
      var _loc13_:ByteArray = new ByteArray();
      _loc13_.endian = "littleEndian";
      _loc13_.writeUTFBytes("FWS");
      _loc13_.writeByte(_loc5_[3]);
      _loc13_.writeInt(_loc6_ + _loc11_.length);
      _loc13_.writeBytes(_loc5_,8,_loc6_ - 8);
      _loc13_.writeBytes(_loc11_);
      return _loc13_;
   }
}
