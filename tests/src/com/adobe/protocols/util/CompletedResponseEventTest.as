/*
  Copyright (c) 2009, Adobe Systems Incorporated
  All rights reserved.

  Redistribution and use in source and binary forms, with or without 
  modification, are permitted provided that the following conditions are
  met:

  * Redistributions of source code must retain the above copyright notice, 
    this list of conditions and the following disclaimer.
  
  * Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the 
    documentation and/or other materials provided with the distribution.
  
  * Neither the name of Adobe Systems Incorporated nor the names of its 
    contributors may be used to endorse or promote products derived from 
    this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
  IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR 
  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

package com.adobe.protocols.util
{
	import com.adobe.protocols.dict.util.CompleteResponseEvent;
	
	import flexunit.framework.TestCase;

	public class CompletedResponseEventTest extends TestCase
	{
		public function CompletedResponseEventTest(methodName:String=null)
		{
			super(methodName);
		}
		
		public function test_clone():void
		{
			var e1:CompleteResponseEvent = new CompleteResponseEvent(CompleteResponseEvent.COMPLETE_RESPONSE);
			e1.response = "foo";
			
			var e2:CompleteResponseEvent = CompleteResponseEvent(e1.clone());
			
			assertTrue("e1 != e2", e1 != e2);
			assertTrue("e1.cancelable == e2.cancelable", e1.cancelable == e2.cancelable);
			assertTrue("e1.bubbles == e2.bubbles", e1.bubbles == e2.bubbles);
			assertTrue("e1.type == e2.type", e1.type == e2.type);
			assertTrue("e1.response == e2.response", e1.response == e2.response);
		}			
	}
}