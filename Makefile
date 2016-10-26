#  
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#  
#       http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#  

build:
	mkdir build/
	g++ -c -O2 -fPIC  -MMD -MP -MF "build/calculator.o.d" -o build/calculator.o src/calculator.cpp
	g++ -o build/libcpp-calculator.so build/calculator.o -shared -fPIC

clean:
	rm -rf build/