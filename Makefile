CC=$(CXX)
CXXFLAGS := -Wall -g

all_i_currently_care_about: ninja_test

OBJS=parsers.o ninja_jumble.o

ninja_test: LDFLAGS = -lgtest -lgtest_main -lpthread
ninja_test: ninja_test.o $(OBJS)
ninja_test.o: ninja_test.cc ninja.h eval_env.h manifest_parser.h

ninja: ninja.o $(OBJS)
ninja.o: ninja.cc
