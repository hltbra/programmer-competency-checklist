class Entry < Array
  attr_reader :title

  def initialize(title, entries)
    @title = title
    self.concat entries
  end
end

def config
  big_areas = []

  data_structures = Entry.new("data structures", [
    %q{Doesn't know the difference between Array and LinkedList},
    %q{Able to explain and use Arrays, LinkedLists, Dictionaries etc in practical programming tasks},
    %q{Knows space and time tradeoffs of the basic data structures, Arrays vs LinkedLists, Able to explain how hashtables can be implemented and can handle collisions, Priority queues and ways to implement them etc.},
    %q{Knowledge of advanced data structures like B-trees, binomial and fibonacci heaps, AVL/Red Black trees, Splay Trees, Skip Lists, tries etc.},
  ])

  algorithms = Entry.new("algorithms", [
    %q{Unable to find the average of numbers in an array (It's hard to believe but I've interviewed such candidates) },
    %q{Basic sorting, searching and data structure traversal and retrieval algorithms },
    %q{Tree, Graph, simple greedy and divide and conquer algorithms, is able to understand the relevance of the levels of this matrix. },
    %q{Able to recognize and code dynamic programming solutions, good knowledge of graph algorithms, good knowledge of numerical computation algorithms, able to identify NP problems etc. },
  ])


  systems_programming = Entry.new("systems programming", [
    %q{Doesn't know what a compiler, linker or interpreter is },
    %q{Basic understanding of compilers, linker and interpreters. Understands what assembly code is and how things work at the hardware level. Some knowledge of virtual memory and paging. },
    %q{Understands kernel mode vs. user mode, multi-threading, synchronization primitives and how they're implemented, able to read assembly code. Understands how networks work, understanding of network protocols and socket level programming.},
    %q{Understands the entire programming stack, hardware (CPU + Memory + Cache + Interrupts + microcode), binary code, assembly, static and dynamic linking, compilation, interpretation, JIT compilation, garbage collection, heap, stack, memory addressing...},
  ])

  source_code = Entry.new("source code version control", [
    %q{Folder backups by date},
    %q{VSS and beginning CVS/SVN user},
    %q{Proficient in using CVS and SVN features. Knows how to branch and merge, use patches setup repository properties etc.},
    %q{Knowledge of distributed VCS systems. Has tried out Bzr/Mercurial/Darcs/Git},
  ])

  build = Entry.new("build automation", [
    %q{Only knows how to build from IDE},
    %q{Knows how to build the system from the command line},
    %q{Can setup a script to build the basic system},
    %q{Can setup a script to build the system and also documentation, installers, generate release notes and tag the code in source control},
  ])

  automated_testing = Entry.new("automated testing", [
    %q{Thinks that all testing is the job of the tester},
    %q{Has written automated unit tests and comes up with good unit test cases for the code that is being written},
    %q{Has written code in TDD manner},
    %q{Understands and is able to setup automated functional, load/performance and UI tests},
])


  problem_decomposition = Entry.new("problem decomposition", [
    %q{Only straight line code with copy paste for reuse},
    %q{Able to break up problem into multiple functions},
    %q{Able to come up with reusable functions/objects that solve the overall problem},
    %q{Use of appropriate data structures and algorithms and comes up with generic/object-oriented code that encapsulate aspects of the problem that are subject to change.},
  ])

  systems_decomposition = Entry.new("systems decomposition", [
    %q{Not able to think above the level of a single file/class},
    %q{Able to break up problem space and design solution as long as it is within the same platform/technology},
    %q{Able to design systems that span multiple technologies/platforms.},
    %q{Able to visualize and design complex systems with multiple product lines and integrations with external systems. Also should be able to design operations support systems like monitoring, reporting, fail overs etc.},
  ])

  communication = Entry.new("communication", [
    %q{Cannot express thoughts/ideas to peers. Poor spelling and grammar.},
    %q{Peers can understand what is being said. Good spelling and grammar.},
    %q{Is able to effectively communicate with peers},
    %q{Able to understand and communicate thoughts/design/ideas/specs in a unambiguous manner and adjusts communication as per the context},
  ])

  code_organization_within_file = Entry.new("code organization within a file", [
    %q{no evidence of organization within a file},
    %q{Methods are grouped logically or by accessibility},
    %q{Code is grouped into regions and well commented with references to other source files},
    %q{File has license header, summary, well commented, consistent white space usage. The file should look beautiful.},
  ])

  code_organization_across_files = Entry.new("code organization across files", [
    %q{No thought given to organizing code across files},
    %q{Related files are grouped into a folder},
    %q{Each physical file has a unique purpose, for e.g. one class definition, one feature implementation etc.},
    %q{Code organization at a physical level closely matches design and looking at file names and folder distribution provides insights into design},
  ])

  source_tree_organization = Entry.new("source tree organization", [
    %q{Everything in one folder},
    %q{Basic separation of code into logical folders.},
    %q{No circular dependencies, binaries, libs, docs, builds, third-party code all organized into appropriate folders},
    %q{Physical layout of source tree matches logical hierarchy and organization.  The directory names and organization provide insights into the design of the system.},
  ])

  code_readability = Entry.new("code readability", [
    %q{Mono-syllable names},
    %q{Good names for files, variables classes, methods etc.},
    %q{No long functions, comments explaining unusual code, bug fixes, code assumptions},
    %q{Code assumptions are verified using asserts, code flows naturally - no deep nesting of conditionals or methods},
  ])

  defensive_coding = Entry.new("defensive coding", [
    %q{Doesn't understand the concept},
    %q{Checks all arguments and asserts critical assumptions in code},
    %q{Makes sure to check return values and check for exceptions around code that can fail.},
    %q{Has his own library to help with defensive coding, writes unit tests that simulate faults},
  ])

  error_handling = Entry.new("error handling", [
    %q{Only codes the happy case},
    %q{Basic error handling around code that can throw exceptions/generate errors},
    %q{Ensures that error/exceptions leave program in good state, resources,
    connections and memory is all cleaned up properly},
    %q{Codes to detect possible exception before, maintain consistent exception
    handling strategy in all layers of code, come up with guidelines on exception
    handling for entire system.},
  ])

  ide = Entry.new("IDE", [
    %q{Mostly uses IDE for text editing},
    %q{Knows their way around the interface, able to effectively use the IDE using menus.},
    %q{Knows keyboard shortcuts for most used operations.},
    %q{Has written custom macros},
  ])

  api = Entry.new("API", [
    %q{Needs to look up the documentation frequently},
    %q{Has the most frequently used APIs in memory},
    %q{Vast and In-depth knowledge of the API},
    %q{Has written libraries that sit on top of the API to simplify frequently used tasks and to fill in gaps in the API},
  ])

  frameworks = Entry.new("frameworks", [
    %q{Has not used any framework outside of the core platform},
    %q{Has heard about but not used the popular frameworks available for the platform.},
    %q{Has used more than one framework in a professional capacity and is well-versed with the idioms of the frameworks.},
    %q{Author of framework},
  ])

  requirements = Entry.new("requirements", [
    %q{Takes the given requirements and codes to spec},
    %q{Come up with questions regarding missed cases in the spec},
    %q{Understand complete picture and come up with entire areas that need to
    be speced},
    %q{Able to suggest better alternatives and flows to given requirements based
    on experience},
  ])

  scripting = Entry.new("scripting", [
    %q{No knowledge of scripting tools},
    %q{Batch files/shell scripts},
    %q{Perl/Python/Ruby/VBScript/Powershell},
    %q{Has written and published reusable code},
  ])

  database = Entry.new("database", [
    %q{Thinks that Excel is a database},
    %q{Knows basic database concepts, normalization, ACID, transactions and can
    write simple selects},
    %q{Able to design good and normalized database schemas keeping in mind the
    queries that'll have to be run, proficient in use of views, stored procedures,
    triggers and user defined types. Knows difference between clustered and
    non-clustered indexes. Proficient in use of ORM tools.},
    %q{Can do basic database administration, performance optimization, index
    optimization, write advanced select queries, able to replace cursor usage
    with relational sql, understands how data is stored internally, understands
    how indexes are stored internally, understands how databases can be mirrored,
    replicated etc. Understands how the two phase commit works.},
  ])



  languages = Entry.new("languages with professional experience", [
    %q{Imperative or Object Oriented},
    %q{Imperative, Object-Oriented and declarative (SQL), added bonus if they
    understand static vs dynamic typing, weak vs strong typing and static inferred
    types},
    %q{Functional, added bonus if they understand lazy evaluation, currying,
    continuations},
    %q{Concurrent (Erlang, Oz) and Logic (Prolog)},
  ])

  platforms = Entry.new("platforms with professional experience", [
    %q{1},
    %q{2-3},
    %q{4-5},
    %q{6+},
  ])

  years = Entry.new("years of professional experience", [
    %q{1},
    %q{2-5},
    %q{6-9},
    %q{10+},
  ])

  domain_knowledge = Entry.new("domain knowledge", [
    %q{No knowledge of the domain},
    %q{Has worked on at least one product in the domain.},
    %q{Has worked on multiple products in the same domain.},
    %q{Domain expert. Has designed and implemented several products/solutions
    in the domain. Well versed with standard terms, protocols used in the domain.},
  ])


  tool_knowledge = Entry.new("tool knowledge", [
    %q{Limited to primary IDE (VS.Net, Eclipse etc.)},
    %q{Knows about some alternatives to popular and standard tools.},
    %q{Good knowledge of editors, debuggers, IDEs, open source alternatives etc.
    etc. For e.g. someone who knows most of the tools from Scott Hanselman's
    power tools list. Has used ORM tools.},
    %q{Has actually written tools and scripts, added bonus if they've been published.},
  ])

  languages_exposed_to = Entry.new("languages exposed to", [
    %q{Imperative or Object Oriented},
    %q{Imperative, Object-Oriented and declarative (SQL), added bonus if they
    understand static vs dynamic typing, weak vs strong typing and static inferred
    types},
    %q{Functional, added bonus if they understand lazy evaluation, currying,
    continuations},
    %q{Concurrent (Erlang, Oz) and Logic (Prolog)},
  ])

  codebase_knowledge = Entry.new("codebase knowledge", [
    %q{Has never looked at the codebase},
    %q{Basic knowledge of the code layout and how to build the system},
    %q{Good working knowledge of code base, has implemented several bug fixes
    and maybe some small features.},
    %q{Has implemented multiple big features in the codebase and can easily visualize
    the changes required for most features or bug fixes.},
  ])

  knowledge_with_upcoming_tech = Entry.new("knowledge of upcoming technologies", [
    %q{Has not heard of the upcoming technologies},
    %q{Has heard of upcoming technologies in the field},
    %q{Has downloaded the alpha preview/CTP/beta and read some articles/manuals},
    %q{Has played with the previews and has actually built something with it
    and as a bonus shared that with everyone else},
  ])

  platform_internals = Entry.new("platform internals", [
    %q{Zero knowledge of platform internals},
    %q{Has basic knowledge of how the platform works internally},
    %q{Deep knowledge of platform internals and can visualize how the platform
    takes the program and converts it into executable code.},
    %q{Has written tools to enhance or provide information on platform internals.
    For e.g. disassemblers, decompilers, debuggers etc.},
  ])

  books = Entry.new("books", [
    %q{Unleashed series, 21 days series, 24 hour series, dummies series...},
    %q{Code Complete, Don't Make me Think, Mastering Regular Expressions},
    %q{Design Patterns, Peopleware, Programming Pearls, Algorithm Design Manual,
    Pragmatic Programmer, Mythical Man month},
    %q{Structure and Interpretation of Computer Programs, Concepts Techniques,
    Models of Computer Programming, Art of Computer Programming, Database systems
    , by C. J Date, Thinking Forth, Little Schemer},
  ])

  blogs = Entry.new("blogs", [
    %q{Has heard of them but never got the time.},
    %q{Reads tech/programming/software engineering blogs and listens to podcasts
    regularly.},
    %q{Maintains a link blog with some collection of useful articles and tools
    that he/she has collected},
    %q{Maintains a blog in which personal insights and thoughts on programming
    are shared},
  ])


  big_areas << Entry.new("Computer Science", [data_structures, algorithms, systems_programming])
  big_areas << Entry.new("Software Engineering", [source_code, build, automated_testing])
  big_areas << Entry.new("Programming", [
    problem_decomposition, systems_decomposition, communication,
    code_organization_within_file, code_organization_across_files,
    source_tree_organization, code_readability, defensive_coding, error_handling,
    ide, api, frameworks, requirements, scripting, database])
  big_areas << Entry.new("Experience", [languages, platforms, years, domain_knowledge])
  big_areas << Entry.new("Knowledge", [
    tool_knowledge, languages_exposed_to, codebase_knowledge,
    knowledge_with_upcoming_tech, platform_internals, books, blogs])

  binding
end
