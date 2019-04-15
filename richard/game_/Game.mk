##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Game
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Documents/richard
ProjectPath            :=C:/Users/teboho/Documents/richard/game_
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=07/11/2018
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/executables/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Game.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)C:\doctest-1.2.9\doctest $(IncludeSwitch)C:\SFML-2.5.0\include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-network $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-window" "sfml-audio" "sfml-network" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:\SFML-2.5.0\lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/mingw64/bin/ar.exe rcu
CXX      := C:/mingw64/bin/g++.exe --std=c++17
CC       := C:/mingw64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/mingw64/bin/as.exe


##
## User defined environment variables
##
Objects0=$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(ObjectSuffix): ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/address-book.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/address-book.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(DependSuffix): ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/address-book.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(DependSuffix) -MM ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/address-book.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(PreprocessSuffix): ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/address-book.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_address-book.cpp$(PreprocessSuffix) ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/address-book.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(ObjectSuffix): ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/adress-boo-test.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/adress-boo-test.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(DependSuffix): ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/adress-boo-test.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(DependSuffix) -MM ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/adress-boo-test.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(PreprocessSuffix): ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/adress-boo-test.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-lab-5-1056760-Matsunye-1130992-Lekeno_src_address-book_adress-boo-test.cpp$(PreprocessSuffix) ../../../Videos/2018-lab-5-1056760-Matsunye-1130992-Lekeno/src/address-book/adress-boo-test.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


