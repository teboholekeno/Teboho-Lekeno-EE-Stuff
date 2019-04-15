##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=GameTests
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/teboho/Documents/richard
ProjectPath            :=C:/Users/teboho/Documents/richard/GameTests
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=teboho
Date                   :=24/10/2018
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
ObjectsFileList        :="GameTests.txt"
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
Objects0=$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(ObjectSuffix): ../SoftwareOneProject/GameLevels.cpp $(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/SoftwareOneProject/GameLevels.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(DependSuffix): ../SoftwareOneProject/GameLevels.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(DependSuffix) -MM ../SoftwareOneProject/GameLevels.cpp

$(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(PreprocessSuffix): ../SoftwareOneProject/GameLevels.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_SoftwareOneProject_GameLevels.cpp$(PreprocessSuffix) ../SoftwareOneProject/GameLevels.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/test-source-code/GameTests.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/test-source-code/GameTests.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/test-source-code/GameTests.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/test-source-code/GameTests.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/test-source-code/GameTests.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_test-source-code_GameTests.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/test-source-code/GameTests.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Centipede.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Centipede.cpp

$(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(ObjectSuffix): ../SoftwareOneProject/Game_Grid.cpp $(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Documents/richard/SoftwareOneProject/Game_Grid.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(DependSuffix): ../SoftwareOneProject/Game_Grid.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(DependSuffix) -MM ../SoftwareOneProject/Game_Grid.cpp

$(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(PreprocessSuffix): ../SoftwareOneProject/Game_Grid.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_SoftwareOneProject_Game_Grid.cpp$(PreprocessSuffix) ../SoftwareOneProject/Game_Grid.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Generator.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Generator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Generator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Generator.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Generator.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Generator.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Generator.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Graphics.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Graphics.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Scorpion.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Scorpion.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Scorpion.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Scorpion.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Scorpion.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Scorpion.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Scorpion.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Player.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Player.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Game.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Game.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Mushroom.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Mushroom.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Bullet.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Bullet.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Window_Size.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Window_Size.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Score.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Score.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Score.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Score.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Score.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Score.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Score.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision_Handler.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision_Handler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision_Handler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision_Handler.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision_Handler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Collision_Handler.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Collision_Handler.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Movable_Objects.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Movable_Objects.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(ObjectSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Spider.cpp $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/teboho/Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Spider.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(DependSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Spider.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(DependSuffix) -MM ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Spider.cpp

$(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(PreprocessSuffix): ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Spider.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_Videos_2018-project-1056760-Matsunye-1130992-Lekeno_game-source-code_Spider.cpp$(PreprocessSuffix) ../../../Videos/2018-project-1056760-Matsunye-1130992-Lekeno/game-source-code/Spider.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


