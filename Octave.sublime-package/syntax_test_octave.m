% SYNTAX TEST "Packages/Octave/Octave.sublime-syntax"

%---------------------------------------------
% Matlab OOP test

classdef (Sealed = false) classname < baseclass
% <- keyword.other
%         ^ variable.parameter
%                ^ keyword.operator.symbols
%                  ^ constant.language
%                         ^ entity.name.class
%                                     ^ entity.other.inherited-class
   properties (SetAccess = private, GetAccess = true)
%  ^ keyword.other
%              ^ variable.parameter
%                          ^ constant.language
%                                   ^ variable.parameter
      PropName
   end
%  ^ keyword.control
   methods
%  ^ keyword.other
      methodName
   end
   events
%  ^ keyword.other
      EventName
   end
   enumeration
%  ^ keyword.other
      EnumName
   end
end

%---------------------------------------------
% Octave OOP test

classdef (Sealed = false) classname < baseclass
% <- keyword.other
%         ^ variable.parameter
%                ^ keyword.operator.symbols
%                  ^ constant.language
%                         ^ entity.name.class
%                                     ^ entity.other.inherited-class
   properties (SetAccess = private, GetAccess = true)
%  ^ keyword.other
%              ^ variable.parameter
%                          ^ constant.language
%                                   ^ variable.parameter
      PropName
   endproperties
%  ^ keyword.control
   methods
%  ^ keyword.other
      methodName
   endmethods
   events
%  ^ keyword.other
      EventName
   endevents
   enumeration
%  ^ keyword.other
      EnumName
   endenumeration
end

%---------------------------------------------
% Syntax brackets/parens punctuation test

x = [ 1.76 ]
% <- source.octave meta.variable.other.valid.octave
% ^ source.octave keyword.operator.symbols.octave
%   ^ source.octave punctuation.section.brackets.begin.octave
%     ^^^^ source.octave meta.brackets.octave constant.numeric.octave
%          ^ source.octave punctuation.section.brackets.end.octave


xAprox = fMetodoDeNewton( xi )
%  <- source.octave meta.variable.other.valid.octave
%      ^ source.octave keyword.operator.symbols.octave
%        ^ source.octave meta.variable.other.valid.octave
%                       ^ source.octave punctuation.section.parens.begin.octave
%                         ^ source.octave meta.parens.octave meta.variable.other.valid.octave
%                            ^ source.octave punctuation.section.parens.end.octave


%---------------------------------------------
% Comment tests

# Hash comment
# with some more text

% Percent comment

%% Double-percent comment (starts a cell)

% Block comment test

% Success case
%{
x = 5
% ^ source.octave comment.block.percentage.octave
%}

% Invalid block
%{           Not start of block comment
%            ^ comment.line.percentage.octave
x = 5
% ^ keyword.operator.symbols.octave
%}

  %{
%}           Not end of block
%            ^ comment.block.percentage.octave
x = 5
% ^ comment.block.percentage.octave
  %}
x = 5 %{ not block comment
% ^ keyword.operator.symbols.octave
x = 5
%   ^ constant.numeric.octave


%---------------------------------------------
% Function

function y = average(x)
% <- keyword.other
%        ^ variable.parameter.output.function.octave
%            ^^^^^^^ entity.name.function.octave
%                    ^ variable.parameter.input.function.octave
   if ~isvector(x)
%     ^ keyword.operator.symbols.octave
       error('Input must be a vector')
   end
   if ! isvector (x)
       error("Input must be a vector")
   endif
   y = sum(x)/length(x);
endfunction

function [m,s] = stat(x)
% <- keyword.other
%         ^ variable.parameter.output.function.octave
%          ^ -variable.parameter.output.function.octave
%           ^ variable.parameter.output.function.octave
%              ^ keyword.operator.assignment.octave
%                ^^^^ entity.name.function.octave
%                     ^ variable.parameter.input.function.octave
   n = length(x);
   m = sum(x)/n;
   s = sqrt(sum((x-m).^2/n));
end

function m = avg(x,n)
%        ^ variable.parameter.output.function.octave
%            ^^^ entity.name.function.octave
%                ^ variable.parameter.input.function.octave
%                  ^ variable.parameter.input.function.octave
   m = sum(x)/n;
end

function foo(bar)
% <- keyword.other.octave
%        ^^^ entity.name.function.octave
%            ^^^ meta.function.parameters.octave variable.parameter.input.function.octave
end

function x = foo
% <- keyword.other.octave
%        ^ variable.parameter.output.function.octave
%          ^ keyword.operator.assignment.octave
%            ^^^ entity.name.function.octave
end

function foo
% <- keyword.other.octave
%        ^^^ entity.name.function.octave
end

function foo % with comment
% <- keyword.other.octave
%        ^^^ entity.name.function.octave
end


%---------------------------------------------
% Numbers

1
% <- constant.numeric.octave
.1
% <- constant.numeric.octave
1.1
% <- constant.numeric.octave
.1e1
% <- constant.numeric.octave
1.1e1
% <- constant.numeric.octave
1e1
% <- constant.numeric.octave
1i
% <- constant.numeric.octave
1j
% <- constant.numeric.octave
1e2j
% <- constant.numeric.octave


%---------------------------------------------
% transpose
a = a' % is the conjugate and transpose
%   ^ -keyword.operator.transpose.octave
%    ^ keyword.operator.transpose.octave
a = a.' % is the transpose
%   ^ -keyword.operator.transpose.octave
%    ^^ keyword.operator.transpose.octave
x = a[3]' + b(4)' % is the conjugate and transpose
%       ^ keyword.operator.transpose.octave
%               ^ keyword.operator.transpose.octave

l = {l.n}';
%        ^ keyword.operator.transpose.octave

%---------------------------------------------
% String
a = '%'
a = '.' % .'
%         ^^^ comment.line.percentage.octave

 'a'a'
%  ^ string.quoted.single.octave invalid.illegal.unescaped-quote.octave
%^ string.quoted.single.octave punctuation.definition.string.begin.octave
% ^ string.quoted.single.octave
%    ^ string.quoted.single.octave punctuation.definition.string.end.octave

regexprep(outloc, '.+\\', '')
%                ^ punctuation.definition.string.begin.octave
%                 ^^ meta.parens.octave string.quoted.single.octave
%                   ^^ constant.character.escape.octave
%                     ^ punctuation.definition.string.end.octave

s1="00:06:57";
%  ^ punctuation.definition.string.begin.octave
%   ^^^^^^^^ string.quoted.double.octave
%           ^ punctuation.definition.string.end.octave

%---------------------------------------------
parfor x = 1:10
%^ keyword.control.octave
end
