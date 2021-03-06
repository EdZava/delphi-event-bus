{ *******************************************************************************
  Copyright 2016 Daniele Spinetti

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  ******************************************************************************** }

unit EventBus.Attributes;

interface

uses EventBus.Commons;

type

  SubscribeAttribute = class(TCustomAttribute)
  private
    FThreadMode: TThreadMode;
  public
    constructor Create(AThreadMode: TThreadMode = TThreadMode.Posting);
    property ThreadMode: TThreadMode read FThreadMode;
  end;

implementation

{ SubscribeAttribute }

constructor SubscribeAttribute.Create(AThreadMode: TThreadMode);
begin
  FThreadMode := AThreadMode;
end;

end.
