##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=MACHONESA
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Documents/richard
ProjectPath            :=C:/Users/teboho/Documents/richard/MACHONESA
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=05/12/2018
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="MACHONESA.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

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
Objects0=$(IntermediateDirectory)/security.cpp$(ObjectSuffix) $(IntermediateDirectory)/design.cpp$(ObjectSuffix) $(IntermediateDirectory)/keyBoardInput.cpp$(ObjectSuffix) $(IntermediateDirectory)/clientObject.cpp$(ObjectSuffix) $(IntermediateDirectory)/storageAcess.cpp$(ObjectSuffix) $(IntermediateDirectory)/Administrator.cpp$(ObjectSuffix) $(IntermediateDirectory)/Date.cpp$(ObjectSuffix) $(IntermediateDirectory)/Accountant.cpp$(ObjectSuffix) $(IntermediateDirectory)/Exceptions.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) \
	



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
$(IntermediateDirectory)/security.cpp$(ObjectSuffix): security.cpp $(IntermediateDirectory)/security.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/security.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/security.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/security.cpp$(DependSuffix): security.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/security.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/security.cpp$(DependSuffix) -MM security.cpp

$(IntermediateDirectory)/security.cpp$(PreprocessSuffix): security.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/security.cpp$(PreprocessSuffix) security.cpp

$(IntermediateDirectory)/design.cpp$(ObjectSuffix): design.cpp $(IntermediateDirectory)/design.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/design.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/design.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/design.cpp$(DependSuffix): design.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/design.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/design.cpp$(DependSuffix) -MM design.cpp

$(IntermediateDirectory)/design.cpp$(PreprocessSuffix): design.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/design.cpp$(PreprocessSuffix) design.cpp

$(IntermediateDirectory)/keyBoardInput.cpp$(ObjectSuffix): keyBoardInput.cpp $(IntermediateDirectory)/keyBoardInput.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/keyBoardInput.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/keyBoardInput.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/keyBoardInput.cpp$(DependSuffix): keyBoardInput.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/keyBoardInput.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/keyBoardInput.cpp$(DependSuffix) -MM keyBoardInput.cpp

$(IntermediateDirectory)/keyBoardInput.cpp$(PreprocessSuffix): keyBoardInput.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/keyBoardInput.cpp$(PreprocessSuffix) keyBoardInput.cpp

$(IntermediateDirectory)/clientObject.cpp$(ObjectSuffix): clientObject.cpp $(IntermediateDirectory)/clientObject.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/clientObject.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/clientObject.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/clientObject.cpp$(DependSuffix): clientObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/clientObject.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/clientObject.cpp$(DependSuffix) -MM clientObject.cpp

$(IntermediateDirectory)/clientObject.cpp$(PreprocessSuffix): clientObject.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/clientObject.cpp$(PreprocessSuffix) clientObject.cpp

$(IntermediateDirectory)/storageAcess.cpp$(ObjectSuffix): storageAcess.cpp $(IntermediateDirectory)/storageAcess.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/storageAcess.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/storageAcess.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/storageAcess.cpp$(DependSuffix): storageAcess.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/storageAcess.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/storageAcess.cpp$(DependSuffix) -MM storageAcess.cpp

$(IntermediateDirectory)/storageAcess.cpp$(PreprocessSuffix): storageAcess.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/storageAcess.cpp$(PreprocessSuffix) storageAcess.cpp

$(IntermediateDirectory)/Administrator.cpp$(ObjectSuffix): Administrator.cpp $(IntermediateDirectory)/Administrator.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/Administrator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Administrator.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Administrator.cpp$(DependSuffix): Administrator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Administrator.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Administrator.cpp$(DependSuffix) -MM Administrator.cpp

$(IntermediateDirectory)/Administrator.cpp$(PreprocessSuffix): Administrator.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Administrator.cpp$(PreprocessSuffix) Administrator.cpp

$(IntermediateDirectory)/Date.cpp$(ObjectSuffix): Date.cpp $(IntermediateDirectory)/Date.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/Date.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Date.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Date.cpp$(DependSuffix): Date.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Date.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Date.cpp$(DependSuffix) -MM Date.cpp

$(IntermediateDirectory)/Date.cpp$(PreprocessSuffix): Date.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Date.cpp$(PreprocessSuffix) Date.cpp

$(IntermediateDirectory)/Accountant.cpp$(ObjectSuffix): Accountant.cpp $(IntermediateDirectory)/Accountant.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/Accountant.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Accountant.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Accountant.cpp$(DependSuffix): Accountant.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Accountant.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Accountant.cpp$(DependSuffix) -MM Accountant.cpp

$(IntermediateDirectory)/Accountant.cpp$(PreprocessSuffix): Accountant.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Accountant.cpp$(PreprocessSuffix) Accountant.cpp

$(IntermediateDirectory)/Exceptions.cpp$(ObjectSuffix): Exceptions.cpp $(IntermediateDirectory)/Exceptions.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/Exceptions.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Exceptions.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Exceptions.cpp$(DependSuffix): Exceptions.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Exceptions.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Exceptions.cpp$(DependSuffix) -MM Exceptions.cpp

$(IntermediateDirectory)/Exceptions.cpp$(PreprocessSuffix): Exceptions.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Exceptions.cpp$(PreprocessSuffix) Exceptions.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/MACHONESA/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


