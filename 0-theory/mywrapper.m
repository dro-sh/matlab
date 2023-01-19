function varargout = mywrapper(fun, varargin)
[varargout{1:nargout}] = feval(fun,varargin{:});
