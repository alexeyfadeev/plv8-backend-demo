CREATE OR REPLACE FUNCTION graphql.execute(query text, schema text)
RETURNS JSONB
AS $$

var gqlquery = {};

!function(e){var t={};function n(i){if(t[i])return t[i].exports;var r=t[i]={i:i,l:!1,exports:{}};return e[i].call(r.exports,r,r.exports,n),r.l=!0,r.exports}n.m=e,n.c=t,n.d=function(e,t,i){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:i})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var i=Object.create(null);if(n.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)n.d(i,r,function(t){return e[t]}.bind(null,r));return i},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=1)}([function(e,t,n){var i=n(2).parse;function r(e){return e.replace(/[\s,]+/g," ").trim()}var a={},s={};var o=!0;var c=!1;function u(e){var t=r(e);if(a[t])return a[t];var n=i(e,{experimentalFragmentVariables:c});if(!n||"Document"!==n.kind)throw new Error("Not a valid GraphQL document.");return n=function e(t,n){var i=Object.prototype.toString.call(t);if("[object Array]"===i)return t.map((function(t){return e(t,n)}));if("[object Object]"!==i)throw new Error("Unexpected input.");n&&t.loc&&delete t.loc,t.loc&&(delete t.loc.startToken,delete t.loc.endToken);var r,a,s,o=Object.keys(t);for(r in o)o.hasOwnProperty(r)&&(a=t[o[r]],"[object Object]"!==(s=Object.prototype.toString.call(a))&&"[object Array]"!==s||(t[o[r]]=e(a,!0)));return t}(n=function(e){for(var t,n={},i=[],a=0;a<e.definitions.length;a++){var c=e.definitions[a];if("FragmentDefinition"===c.kind){var u=c.name.value,l=r((t=c.loc).source.body.substring(t.start,t.end));s.hasOwnProperty(u)&&!s[u][l]?(o&&console.warn("Warning: fragment with name "+u+" already exists.\ngraphql-tag enforces all fragment names across your application to be unique; read more about\nthis in the docs: http://dev.apollodata.com/core/fragments.html#unique-names"),s[u][l]=!0):s.hasOwnProperty(u)||(s[u]={},s[u][l]=!0),n[l]||(n[l]=!0,i.push(c))}else i.push(c)}return e.definitions=i,e}(n),!1),a[t]=n,n}function l(){for(var e=Array.prototype.slice.call(arguments),t=e[0],n="string"==typeof t?t:t[0],i=1;i<e.length;i++)e[i]&&e[i].kind&&"Document"===e[i].kind?n+=e[i].loc.source.body:n+=e[i],n+=t[i];return u(n)}l.default=l,l.resetCaches=function(){a={},s={}},l.disableFragmentWarnings=function(){o=!1},l.enableExperimentalFragmentVariables=function(){c=!0},l.disableExperimentalFragmentVariables=function(){c=!1},e.exports=l},
function(e,t,n)
{
  "use strict";
  
  n.r(t);
  var i=n(0);
  var r=n.n(i).a(query);

  gqlquery = r;
},function(e,t,n){"use strict";n.r(t);var i="function"==typeof Symbol&&"function"==typeof Symbol.for?Symbol.for("nodejs.util.inspect.custom"):void 0;function r(e){return(r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}var a=10,s=2;function o(e,t){switch(r(e)){case"string":return JSON.stringify(e);case"function":return e.name?"[function ".concat(e.name,"]"):"[function]";case"object":return null===e?"null":function(e,t){if(-1!==t.indexOf(e))return"[Circular]";var n=[].concat(t,[e]),r=function(e){var t=e[String(i)];if("function"==typeof t)return t;if("function"==typeof e.inspect)return e.inspect}(e);if(void 0!==r){var c=r.call(e);if(c!==e)return"string"==typeof c?c:o(c,n)}else if(Array.isArray(e))return function(e,t){if(0===e.length)return"[]";if(t.length>s)return"[Array]";for(var n=Math.min(a,e.length),i=e.length-n,r=[],c=0;c<n;++c)r.push(o(e[c],t));1===i?r.push("... 1 more item"):i>1&&r.push("... ".concat(i," more items"));return"["+r.join(", ")+"]"}(e,n);return function(e,t){var n=Object.keys(e);if(0===n.length)return"{}";if(t.length>s)return"["+function(e){var t=Object.prototype.toString.call(e).replace(/^\[object /,"").replace(/]$/,"");if("Object"===t&&"function"==typeof e.constructor){var n=e.constructor.name;if("string"==typeof n&&""!==n)return n}return t}(e)+"]";return"{ "+n.map((function(n){return n+": "+o(e[n],t)})).join(", ")+" }"}(e,n)}(e,t);default:return String(e)}}function c(e,t){if(!Boolean(e))throw new Error(t)}function u(e){var t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:e.prototype.toString;e.prototype.toJSON=t,e.prototype.inspect=t,i&&(e.prototype[i]=t)}function l(e){return(l="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}function p(e,t){for(var n,i=/\r\n|[\n\r]/g,r=1,a=t+1;(n=i.exec(e.body))&&n.index<t;)r+=1,a=t+1-(n.index+n[0].length);return{line:r,column:a}}function h(e){return f(e.source,p(e.source,e.start))}function f(e,t){var n=e.locationOffset.column-1,i=E(n)+e.body,r=t.line-1,a=e.locationOffset.line-1,s=t.line+a,o=1===t.line?n:0,c=t.column+o,u="".concat(e.name,":").concat(s,":").concat(c,"\n"),l=i.split(/\r\n|[\n\r]/g),p=l[r];if(p.length>120){for(var h=Math.floor(c/80),f=c%80,T=[],N=0;N<p.length;N+=80)T.push(p.slice(N,N+80));return u+d([["".concat(s),T[0]]].concat(T.slice(1,h+1).map((function(e){return["",e]})),[[" ",E(f-1)+"^"],["",T[h+1]]]))}return u+d([["".concat(s-1),l[r-1]],["".concat(s),p],["",E(c-1)+"^"],["".concat(s+1),l[r+1]]])}function d(e){var t=e.filter((function(e){e[0];return void 0!==e[1]})),n=Math.max.apply(Math,t.map((function(e){return e[0].length})));return t.map((function(e){var t,i=e[0],r=e[1];return E(n-(t=i).length)+t+(r?" | "+r:" |")})).join("\n")}function E(e){return Array(e+1).join(" ")}function T(e,t,n,i,r,a,s){var o=Array.isArray(t)?0!==t.length?t:void 0:t?[t]:void 0,c=n;if(!c&&o){var u=o[0];c=u&&u.loc&&u.loc.source}var h,f=i;!f&&o&&(f=o.reduce((function(e,t){return t.loc&&e.push(t.loc.start),e}),[])),f&&0===f.length&&(f=void 0),i&&n?h=i.map((function(e){return p(n,e)})):o&&(h=o.reduce((function(e,t){return t.loc&&e.push(p(t.loc.source,t.loc.start)),e}),[]));var d,E=s;if(null==E&&null!=a){var N=a.extensions;"object"==l(d=N)&&null!==d&&(E=N)}Object.defineProperties(this,{message:{value:e,enumerable:!0,writable:!0},locations:{value:h||void 0,enumerable:Boolean(h)},path:{value:r||void 0,enumerable:Boolean(r)},nodes:{value:o||void 0},source:{value:c||void 0},positions:{value:f||void 0},originalError:{value:a},extensions:{value:E||void 0,enumerable:Boolean(E)}}),a&&a.stack?Object.defineProperty(this,"stack",{value:a.stack,writable:!0,configurable:!0}):Error.captureStackTrace?Error.captureStackTrace(this,T):Object.defineProperty(this,"stack",{value:Error().stack,writable:!0,configurable:!0})}function N(e,t,n){return new T("Syntax Error: ".concat(n),void 0,e,[t])}T.prototype=Object.create(Error.prototype,{constructor:{value:T},name:{value:"GraphQLError"},toString:{value:function(){return function(e){var t=e.message;if(e.nodes)for(var n=0,i=e.nodes;n<i.length;n++){var r=i[n];r.loc&&(t+="\n\n"+h(r.loc))}else if(e.source&&e.locations)for(var a=0,s=e.locations;a<s.length;a++){var o=s[a];t+="\n\n"+f(e.source,o)}return t}(this)}}});var v=Object.freeze({NAME:"Name",DOCUMENT:"Document",OPERATION_DEFINITION:"OperationDefinition",VARIABLE_DEFINITION:"VariableDefinition",SELECTION_SET:"SelectionSet",FIELD:"Field",ARGUMENT:"Argument",FRAGMENT_SPREAD:"FragmentSpread",INLINE_FRAGMENT:"InlineFragment",FRAGMENT_DEFINITION:"FragmentDefinition",VARIABLE:"Variable",INT:"IntValue",FLOAT:"FloatValue",STRING:"StringValue",BOOLEAN:"BooleanValue",NULL:"NullValue",ENUM:"EnumValue",LIST:"ListValue",OBJECT:"ObjectValue",OBJECT_FIELD:"ObjectField",DIRECTIVE:"Directive",NAMED_TYPE:"NamedType",LIST_TYPE:"ListType",NON_NULL_TYPE:"NonNullType",SCHEMA_DEFINITION:"SchemaDefinition",OPERATION_TYPE_DEFINITION:"OperationTypeDefinition",SCALAR_TYPE_DEFINITION:"ScalarTypeDefinition",OBJECT_TYPE_DEFINITION:"ObjectTypeDefinition",FIELD_DEFINITION:"FieldDefinition",INPUT_VALUE_DEFINITION:"InputValueDefinition",INTERFACE_TYPE_DEFINITION:"InterfaceTypeDefinition",UNION_TYPE_DEFINITION:"UnionTypeDefinition",ENUM_TYPE_DEFINITION:"EnumTypeDefinition",ENUM_VALUE_DEFINITION:"EnumValueDefinition",INPUT_OBJECT_TYPE_DEFINITION:"InputObjectTypeDefinition",DIRECTIVE_DEFINITION:"DirectiveDefinition",SCHEMA_EXTENSION:"SchemaExtension",SCALAR_TYPE_EXTENSION:"ScalarTypeExtension",OBJECT_TYPE_EXTENSION:"ObjectTypeExtension",INTERFACE_TYPE_EXTENSION:"InterfaceTypeExtension",UNION_TYPE_EXTENSION:"UnionTypeExtension",ENUM_TYPE_EXTENSION:"EnumTypeExtension",INPUT_OBJECT_TYPE_EXTENSION:"InputObjectTypeExtension"});var I,m=function(e,t,n){this.body=e,this.name=t||"GraphQL request",this.locationOffset=n||{line:1,column:1},this.locationOffset.line>0||c(0,"line in locationOffset is 1-indexed and must be positive"),this.locationOffset.column>0||c(0,"column in locationOffset is 1-indexed and must be positive")};function y(e){var t=e.split(/\r\n|[\n\r]/g),n=function(e){for(var t=null,n=1;n<e.length;n++){var i=e[n],r=_(i);if(r!==i.length&&((null===t||r<t)&&0===(t=r)))break}return null===t?0:t}(t);if(0!==n)for(var i=1;i<t.length;i++)t[i]=t[i].slice(n);for(;t.length>0&&O(t[0]);)t.shift();for(;t.length>0&&O(t[t.length-1]);)t.pop();return t.join("\n")}function _(e){for(var t=0;t<e.length&&(" "===e[t]||"\t"===e[t]);)t++;return t}function O(e){return _(e)===e.length}I=m,"function"==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(I.prototype,Symbol.toStringTag,{get:function(){return this.constructor.name}});var x=Object.freeze({SOF:"<SOF>",EOF:"<EOF>",BANG:"!",DOLLAR:"$",AMP:"&",PAREN_L:"(",PAREN_R:")",SPREAD:"...",COLON:":",EQUALS:"=",AT:"@",BRACKET_L:"[",BRACKET_R:"]",BRACE_L:"{",PIPE:"|",BRACE_R:"}",NAME:"Name",INT:"Int",FLOAT:"Float",STRING:"String",BLOCK_STRING:"BlockString",COMMENT:"Comment"});function A(){return this.lastToken=this.token,this.token=this.lookahead()}function k(){var e=this.token;if(e.kind!==x.EOF)do{e=e.next||(e.next=b(this,e))}while(e.kind===x.COMMENT);return e}function D(e,t,n,i,r,a,s){this.kind=e,this.start=t,this.end=n,this.line=i,this.column=r,this.value=s,this.prev=a,this.next=null}function S(e){return isNaN(e)?x.EOF:e<127?JSON.stringify(String.fromCharCode(e)):'"\\u'.concat(("00"+e.toString(16).toUpperCase()).slice(-4),'"')}function b(e,t){var n=e.source,i=n.body,r=i.length,a=function(e,t,n){var i=e.length,r=t;for(;r<i;){var a=e.charCodeAt(r);if(9===a||32===a||44===a||65279===a)++r;else if(10===a)++r,++n.line,n.lineStart=r;else{if(13!==a)break;10===e.charCodeAt(r+1)?r+=2:++r,++n.line,n.lineStart=r}}return r}(i,t.end,e),s=e.line,o=1+a-e.lineStart;if(a>=r)return new D(x.EOF,r,r,s,o,t);var c=i.charCodeAt(a);switch(c){case 33:return new D(x.BANG,a,a+1,s,o,t);case 35:return function(e,t,n,i,r){var a,s=e.body,o=t;do{a=s.charCodeAt(++o)}while(!isNaN(a)&&(a>31||9===a));return new D(x.COMMENT,t,o,n,i,r,s.slice(t+1,o))}(n,a,s,o,t);case 36:return new D(x.DOLLAR,a,a+1,s,o,t);case 38:return new D(x.AMP,a,a+1,s,o,t);case 40:return new D(x.PAREN_L,a,a+1,s,o,t);case 41:return new D(x.PAREN_R,a,a+1,s,o,t);case 46:if(46===i.charCodeAt(a+1)&&46===i.charCodeAt(a+2))return new D(x.SPREAD,a,a+3,s,o,t);break;case 58:return new D(x.COLON,a,a+1,s,o,t);case 61:return new D(x.EQUALS,a,a+1,s,o,t);case 64:return new D(x.AT,a,a+1,s,o,t);case 91:return new D(x.BRACKET_L,a,a+1,s,o,t);case 93:return new D(x.BRACKET_R,a,a+1,s,o,t);case 123:return new D(x.BRACE_L,a,a+1,s,o,t);case 124:return new D(x.PIPE,a,a+1,s,o,t);case 125:return new D(x.BRACE_R,a,a+1,s,o,t);case 65:case 66:case 67:case 68:case 69:case 70:case 71:case 72:case 73:case 74:case 75:case 76:case 77:case 78:case 79:case 80:case 81:case 82:case 83:case 84:case 85:case 86:case 87:case 88:case 89:case 90:case 95:case 97:case 98:case 99:case 100:case 101:case 102:case 103:case 104:case 105:case 106:case 107:case 108:case 109:case 110:case 111:case 112:case 113:case 114:case 115:case 116:case 117:case 118:case 119:case 120:case 121:case 122:return function(e,t,n,i,r){var a=e.body,s=a.length,o=t+1,c=0;for(;o!==s&&!isNaN(c=a.charCodeAt(o))&&(95===c||c>=48&&c<=57||c>=65&&c<=90||c>=97&&c<=122);)++o;return new D(x.NAME,t,o,n,i,r,a.slice(t,o))}(n,a,s,o,t);case 45:case 48:case 49:case 50:case 51:case 52:case 53:case 54:case 55:case 56:case 57:return function(e,t,n,i,r,a){var s=e.body,o=n,c=t,u=!1;45===o&&(o=s.charCodeAt(++c));if(48===o){if((o=s.charCodeAt(++c))>=48&&o<=57)throw N(e,c,"Invalid number, unexpected digit after 0: ".concat(S(o),"."))}else c=g(e,c,o),o=s.charCodeAt(c);46===o&&(u=!0,o=s.charCodeAt(++c),c=g(e,c,o),o=s.charCodeAt(c));69!==o&&101!==o||(u=!0,43!==(o=s.charCodeAt(++c))&&45!==o||(o=s.charCodeAt(++c)),c=g(e,c,o),o=s.charCodeAt(c));if(46===o||69===o||101===o)throw N(e,c,"Invalid number, expected digit but got: ".concat(S(o),"."));return new D(u?x.FLOAT:x.INT,t,c,i,r,a,s.slice(t,c))}(n,a,c,s,o,t);case 34:return 34===i.charCodeAt(a+1)&&34===i.charCodeAt(a+2)?function(e,t,n,i,r,a){var s=e.body,o=t+3,c=o,u=0,l="";for(;o<s.length&&!isNaN(u=s.charCodeAt(o));){if(34===u&&34===s.charCodeAt(o+1)&&34===s.charCodeAt(o+2))return l+=s.slice(c,o),new D(x.BLOCK_STRING,t,o+3,n,i,r,y(l));if(u<32&&9!==u&&10!==u&&13!==u)throw N(e,o,"Invalid character within String: ".concat(S(u),"."));10===u?(++o,++a.line,a.lineStart=o):13===u?(10===s.charCodeAt(o+1)?o+=2:++o,++a.line,a.lineStart=o):92===u&&34===s.charCodeAt(o+1)&&34===s.charCodeAt(o+2)&&34===s.charCodeAt(o+3)?(l+=s.slice(c,o)+'"""',c=o+=4):++o}throw N(e,o,"Unterminated string.")}(n,a,s,o,t,e):function(e,t,n,i,r){var a=e.body,s=t+1,o=s,c=0,u="";for(;s<a.length&&!isNaN(c=a.charCodeAt(s))&&10!==c&&13!==c;){if(34===c)return u+=a.slice(o,s),new D(x.STRING,t,s+1,n,i,r,u);if(c<32&&9!==c)throw N(e,s,"Invalid character within String: ".concat(S(c),"."));if(++s,92===c){switch(u+=a.slice(o,s-1),c=a.charCodeAt(s)){case 34:u+='"';break;case 47:u+="/";break;case 92:u+="\\";break;case 98:u+="\b";break;case 102:u+="\f";break;case 110:u+="\n";break;case 114:u+="\r";break;case 116:u+="\t";break;case 117:var l=(h=a.charCodeAt(s+1),f=a.charCodeAt(s+2),d=a.charCodeAt(s+3),E=a.charCodeAt(s+4),C(h)<<12|C(f)<<8|C(d)<<4|C(E));if(l<0){var p=a.slice(s+1,s+5);throw N(e,s,"Invalid character escape sequence: \\u".concat(p,"."))}u+=String.fromCharCode(l),s+=4;break;default:throw N(e,s,"Invalid character escape sequence: \\".concat(String.fromCharCode(c),"."))}o=++s}}var h,f,d,E;throw N(e,s,"Unterminated string.")}(n,a,s,o,t)}throw N(n,a,function(e){if(e<32&&9!==e&&10!==e&&13!==e)return"Cannot contain the invalid character ".concat(S(e),".");if(39===e)return"Unexpected single quote character ('), did you mean to use a double quote (\")?";return"Cannot parse the unexpected character ".concat(S(e),".")}(c))}function g(e,t,n){var i=e.body,r=t,a=n;if(a>=48&&a<=57){do{a=i.charCodeAt(++r)}while(a>=48&&a<=57);return r}throw N(e,r,"Invalid number, expected digit but got: ".concat(S(a),"."))}function C(e){return e>=48&&e<=57?e-48:e>=65&&e<=70?e-55:e>=97&&e<=102?e-87:-1}u(D,(function(){return{kind:this.kind,value:this.value,line:this.line,column:this.column}}));var R=Object.freeze({QUERY:"QUERY",MUTATION:"MUTATION",SUBSCRIPTION:"SUBSCRIPTION",FIELD:"FIELD",FRAGMENT_DEFINITION:"FRAGMENT_DEFINITION",FRAGMENT_SPREAD:"FRAGMENT_SPREAD",INLINE_FRAGMENT:"INLINE_FRAGMENT",VARIABLE_DEFINITION:"VARIABLE_DEFINITION",SCHEMA:"SCHEMA",SCALAR:"SCALAR",OBJECT:"OBJECT",FIELD_DEFINITION:"FIELD_DEFINITION",ARGUMENT_DEFINITION:"ARGUMENT_DEFINITION",INTERFACE:"INTERFACE",UNION:"UNION",ENUM:"ENUM",ENUM_VALUE:"ENUM_VALUE",INPUT_OBJECT:"INPUT_OBJECT",INPUT_FIELD_DEFINITION:"INPUT_FIELD_DEFINITION"});function L(e,t){return new P(e,t).parseDocument()}function F(e,t){var n=new P(e,t);n.expectToken(x.SOF);var i=n.parseValueLiteral(!1);return n.expectToken(x.EOF),i}function w(e,t){var n=new P(e,t);n.expectToken(x.SOF);var i=n.parseTypeReference();return n.expectToken(x.EOF),i}n.d(t,"parse",(function(){return L})),n.d(t,"parseValue",(function(){return F})),n.d(t,"parseType",(function(){return w}));var P=function(){function e(e,t){var n="string"==typeof e?new m(e):e;n instanceof m||c(0,"Must provide Source. Received: ".concat(o(n,[]))),this._lexer=function(e,t){var n=new D(x.SOF,0,0,0,0,null);return{source:e,options:t,lastToken:n,token:n,line:1,lineStart:0,advance:A,lookahead:k}}(n),this._options=t||{}}var t=e.prototype;return t.parseName=function(){var e=this.expectToken(x.NAME);return{kind:v.NAME,value:e.value,loc:this.loc(e)}},t.parseDocument=function(){var e=this._lexer.token;return{kind:v.DOCUMENT,definitions:this.many(x.SOF,this.parseDefinition,x.EOF),loc:this.loc(e)}},t.parseDefinition=function(){if(this.peek(x.NAME))switch(this._lexer.token.value){case"query":case"mutation":case"subscription":return this.parseOperationDefinition();case"fragment":return this.parseFragmentDefinition();case"schema":case"scalar":case"type":case"interface":case"union":case"enum":case"input":case"directive":return this.parseTypeSystemDefinition();case"extend":return this.parseTypeSystemExtension()}else{if(this.peek(x.BRACE_L))return this.parseOperationDefinition();if(this.peekDescription())return this.parseTypeSystemDefinition()}throw this.unexpected()},t.parseOperationDefinition=function(){var e=this._lexer.token;if(this.peek(x.BRACE_L))return{kind:v.OPERATION_DEFINITION,operation:"query",name:void 0,variableDefinitions:[],directives:[],selectionSet:this.parseSelectionSet(),loc:this.loc(e)};var t,n=this.parseOperationType();return this.peek(x.NAME)&&(t=this.parseName()),{kind:v.OPERATION_DEFINITION,operation:n,name:t,variableDefinitions:this.parseVariableDefinitions(),directives:this.parseDirectives(!1),selectionSet:this.parseSelectionSet(),loc:this.loc(e)}},t.parseOperationType=function(){var e=this.expectToken(x.NAME);switch(e.value){case"query":return"query";case"mutation":return"mutation";case"subscription":return"subscription"}throw this.unexpected(e)},t.parseVariableDefinitions=function(){return this.optionalMany(x.PAREN_L,this.parseVariableDefinition,x.PAREN_R)},t.parseVariableDefinition=function(){var e=this._lexer.token;return{kind:v.VARIABLE_DEFINITION,variable:this.parseVariable(),type:(this.expectToken(x.COLON),this.parseTypeReference()),defaultValue:this.expectOptionalToken(x.EQUALS)?this.parseValueLiteral(!0):void 0,directives:this.parseDirectives(!0),loc:this.loc(e)}},t.parseVariable=function(){var e=this._lexer.token;return this.expectToken(x.DOLLAR),{kind:v.VARIABLE,name:this.parseName(),loc:this.loc(e)}},t.parseSelectionSet=function(){var e=this._lexer.token;return{kind:v.SELECTION_SET,selections:this.many(x.BRACE_L,this.parseSelection,x.BRACE_R),loc:this.loc(e)}},t.parseSelection=function(){return this.peek(x.SPREAD)?this.parseFragment():this.parseField()},t.parseField=function(){var e,t,n=this._lexer.token,i=this.parseName();return this.expectOptionalToken(x.COLON)?(e=i,t=this.parseName()):t=i,{kind:v.FIELD,alias:e,name:t,arguments:this.parseArguments(!1),directives:this.parseDirectives(!1),selectionSet:this.peek(x.BRACE_L)?this.parseSelectionSet():void 0,loc:this.loc(n)}},t.parseArguments=function(e){var t=e?this.parseConstArgument:this.parseArgument;return this.optionalMany(x.PAREN_L,t,x.PAREN_R)},t.parseArgument=function(){var e=this._lexer.token,t=this.parseName();return this.expectToken(x.COLON),{kind:v.ARGUMENT,name:t,value:this.parseValueLiteral(!1),loc:this.loc(e)}},t.parseConstArgument=function(){var e=this._lexer.token;return{kind:v.ARGUMENT,name:this.parseName(),value:(this.expectToken(x.COLON),this.parseValueLiteral(!0)),loc:this.loc(e)}},t.parseFragment=function(){var e=this._lexer.token;this.expectToken(x.SPREAD);var t=this.expectOptionalKeyword("on");return!t&&this.peek(x.NAME)?{kind:v.FRAGMENT_SPREAD,name:this.parseFragmentName(),directives:this.parseDirectives(!1),loc:this.loc(e)}:{kind:v.INLINE_FRAGMENT,typeCondition:t?this.parseNamedType():void 0,directives:this.parseDirectives(!1),selectionSet:this.parseSelectionSet(),loc:this.loc(e)}},t.parseFragmentDefinition=function(){var e=this._lexer.token;return this.expectKeyword("fragment"),this._options.experimentalFragmentVariables?{kind:v.FRAGMENT_DEFINITION,name:this.parseFragmentName(),variableDefinitions:this.parseVariableDefinitions(),typeCondition:(this.expectKeyword("on"),this.parseNamedType()),directives:this.parseDirectives(!1),selectionSet:this.parseSelectionSet(),loc:this.loc(e)}:{kind:v.FRAGMENT_DEFINITION,name:this.parseFragmentName(),typeCondition:(this.expectKeyword("on"),this.parseNamedType()),directives:this.parseDirectives(!1),selectionSet:this.parseSelectionSet(),loc:this.loc(e)}},t.parseFragmentName=function(){if("on"===this._lexer.token.value)throw this.unexpected();return this.parseName()},t.parseValueLiteral=function(e){var t=this._lexer.token;switch(t.kind){case x.BRACKET_L:return this.parseList(e);case x.BRACE_L:return this.parseObject(e);case x.INT:return this._lexer.advance(),{kind:v.INT,value:t.value,loc:this.loc(t)};case x.FLOAT:return this._lexer.advance(),{kind:v.FLOAT,value:t.value,loc:this.loc(t)};case x.STRING:case x.BLOCK_STRING:return this.parseStringLiteral();case x.NAME:return"true"===t.value||"false"===t.value?(this._lexer.advance(),{kind:v.BOOLEAN,value:"true"===t.value,loc:this.loc(t)}):"null"===t.value?(this._lexer.advance(),{kind:v.NULL,loc:this.loc(t)}):(this._lexer.advance(),{kind:v.ENUM,value:t.value,loc:this.loc(t)});case x.DOLLAR:if(!e)return this.parseVariable()}throw this.unexpected()},t.parseStringLiteral=function(){var e=this._lexer.token;return this._lexer.advance(),{kind:v.STRING,value:e.value,block:e.kind===x.BLOCK_STRING,loc:this.loc(e)}},t.parseList=function(e){var t=this,n=this._lexer.token;return{kind:v.LIST,values:this.any(x.BRACKET_L,(function(){return t.parseValueLiteral(e)}),x.BRACKET_R),loc:this.loc(n)}},t.parseObject=function(e){var t=this,n=this._lexer.token;return{kind:v.OBJECT,fields:this.any(x.BRACE_L,(function(){return t.parseObjectField(e)}),x.BRACE_R),loc:this.loc(n)}},t.parseObjectField=function(e){var t=this._lexer.token,n=this.parseName();return this.expectToken(x.COLON),{kind:v.OBJECT_FIELD,name:n,value:this.parseValueLiteral(e),loc:this.loc(t)}},t.parseDirectives=function(e){for(var t=[];this.peek(x.AT);)t.push(this.parseDirective(e));return t},t.parseDirective=function(e){var t=this._lexer.token;return this.expectToken(x.AT),{kind:v.DIRECTIVE,name:this.parseName(),arguments:this.parseArguments(e),loc:this.loc(t)}},t.parseTypeReference=function(){var e,t=this._lexer.token;return this.expectOptionalToken(x.BRACKET_L)?(e=this.parseTypeReference(),this.expectToken(x.BRACKET_R),e={kind:v.LIST_TYPE,type:e,loc:this.loc(t)}):e=this.parseNamedType(),this.expectOptionalToken(x.BANG)?{kind:v.NON_NULL_TYPE,type:e,loc:this.loc(t)}:e},t.parseNamedType=function(){var e=this._lexer.token;return{kind:v.NAMED_TYPE,name:this.parseName(),loc:this.loc(e)}},t.parseTypeSystemDefinition=function(){var e=this.peekDescription()?this._lexer.lookahead():this._lexer.token;if(e.kind===x.NAME)switch(e.value){case"schema":return this.parseSchemaDefinition();case"scalar":return this.parseScalarTypeDefinition();case"type":return this.parseObjectTypeDefinition();case"interface":return this.parseInterfaceTypeDefinition();case"union":return this.parseUnionTypeDefinition();case"enum":return this.parseEnumTypeDefinition();case"input":return this.parseInputObjectTypeDefinition();case"directive":return this.parseDirectiveDefinition()}throw this.unexpected(e)},t.peekDescription=function(){return this.peek(x.STRING)||this.peek(x.BLOCK_STRING)},t.parseDescription=function(){if(this.peekDescription())return this.parseStringLiteral()},t.parseSchemaDefinition=function(){var e=this._lexer.token;this.expectKeyword("schema");var t=this.parseDirectives(!0),n=this.many(x.BRACE_L,this.parseOperationTypeDefinition,x.BRACE_R);return{kind:v.SCHEMA_DEFINITION,directives:t,operationTypes:n,loc:this.loc(e)}},t.parseOperationTypeDefinition=function(){var e=this._lexer.token,t=this.parseOperationType();this.expectToken(x.COLON);var n=this.parseNamedType();return{kind:v.OPERATION_TYPE_DEFINITION,operation:t,type:n,loc:this.loc(e)}},t.parseScalarTypeDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("scalar");var n=this.parseName(),i=this.parseDirectives(!0);return{kind:v.SCALAR_TYPE_DEFINITION,description:t,name:n,directives:i,loc:this.loc(e)}},t.parseObjectTypeDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("type");var n=this.parseName(),i=this.parseImplementsInterfaces(),r=this.parseDirectives(!0),a=this.parseFieldsDefinition();return{kind:v.OBJECT_TYPE_DEFINITION,description:t,name:n,interfaces:i,directives:r,fields:a,loc:this.loc(e)}},t.parseImplementsInterfaces=function(){var e=[];if(this.expectOptionalKeyword("implements")){this.expectOptionalToken(x.AMP);do{e.push(this.parseNamedType())}while(this.expectOptionalToken(x.AMP)||this._options.allowLegacySDLImplementsInterfaces&&this.peek(x.NAME))}return e},t.parseFieldsDefinition=function(){return this._options.allowLegacySDLEmptyFields&&this.peek(x.BRACE_L)&&this._lexer.lookahead().kind===x.BRACE_R?(this._lexer.advance(),this._lexer.advance(),[]):this.optionalMany(x.BRACE_L,this.parseFieldDefinition,x.BRACE_R)},t.parseFieldDefinition=function(){var e=this._lexer.token,t=this.parseDescription(),n=this.parseName(),i=this.parseArgumentDefs();this.expectToken(x.COLON);var r=this.parseTypeReference(),a=this.parseDirectives(!0);return{kind:v.FIELD_DEFINITION,description:t,name:n,arguments:i,type:r,directives:a,loc:this.loc(e)}},t.parseArgumentDefs=function(){return this.optionalMany(x.PAREN_L,this.parseInputValueDef,x.PAREN_R)},t.parseInputValueDef=function(){var e=this._lexer.token,t=this.parseDescription(),n=this.parseName();this.expectToken(x.COLON);var i,r=this.parseTypeReference();this.expectOptionalToken(x.EQUALS)&&(i=this.parseValueLiteral(!0));var a=this.parseDirectives(!0);return{kind:v.INPUT_VALUE_DEFINITION,description:t,name:n,type:r,defaultValue:i,directives:a,loc:this.loc(e)}},t.parseInterfaceTypeDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("interface");var n=this.parseName(),i=this.parseDirectives(!0),r=this.parseFieldsDefinition();return{kind:v.INTERFACE_TYPE_DEFINITION,description:t,name:n,directives:i,fields:r,loc:this.loc(e)}},t.parseUnionTypeDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("union");var n=this.parseName(),i=this.parseDirectives(!0),r=this.parseUnionMemberTypes();return{kind:v.UNION_TYPE_DEFINITION,description:t,name:n,directives:i,types:r,loc:this.loc(e)}},t.parseUnionMemberTypes=function(){var e=[];if(this.expectOptionalToken(x.EQUALS)){this.expectOptionalToken(x.PIPE);do{e.push(this.parseNamedType())}while(this.expectOptionalToken(x.PIPE))}return e},t.parseEnumTypeDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("enum");var n=this.parseName(),i=this.parseDirectives(!0),r=this.parseEnumValuesDefinition();return{kind:v.ENUM_TYPE_DEFINITION,description:t,name:n,directives:i,values:r,loc:this.loc(e)}},t.parseEnumValuesDefinition=function(){return this.optionalMany(x.BRACE_L,this.parseEnumValueDefinition,x.BRACE_R)},t.parseEnumValueDefinition=function(){var e=this._lexer.token,t=this.parseDescription(),n=this.parseName(),i=this.parseDirectives(!0);return{kind:v.ENUM_VALUE_DEFINITION,description:t,name:n,directives:i,loc:this.loc(e)}},t.parseInputObjectTypeDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("input");var n=this.parseName(),i=this.parseDirectives(!0),r=this.parseInputFieldsDefinition();return{kind:v.INPUT_OBJECT_TYPE_DEFINITION,description:t,name:n,directives:i,fields:r,loc:this.loc(e)}},t.parseInputFieldsDefinition=function(){return this.optionalMany(x.BRACE_L,this.parseInputValueDef,x.BRACE_R)},t.parseTypeSystemExtension=function(){var e=this._lexer.lookahead();if(e.kind===x.NAME)switch(e.value){case"schema":return this.parseSchemaExtension();case"scalar":return this.parseScalarTypeExtension();case"type":return this.parseObjectTypeExtension();case"interface":return this.parseInterfaceTypeExtension();case"union":return this.parseUnionTypeExtension();case"enum":return this.parseEnumTypeExtension();case"input":return this.parseInputObjectTypeExtension()}throw this.unexpected(e)},t.parseSchemaExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("schema");var t=this.parseDirectives(!0),n=this.optionalMany(x.BRACE_L,this.parseOperationTypeDefinition,x.BRACE_R);if(0===t.length&&0===n.length)throw this.unexpected();return{kind:v.SCHEMA_EXTENSION,directives:t,operationTypes:n,loc:this.loc(e)}},t.parseScalarTypeExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("scalar");var t=this.parseName(),n=this.parseDirectives(!0);if(0===n.length)throw this.unexpected();return{kind:v.SCALAR_TYPE_EXTENSION,name:t,directives:n,loc:this.loc(e)}},t.parseObjectTypeExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("type");var t=this.parseName(),n=this.parseImplementsInterfaces(),i=this.parseDirectives(!0),r=this.parseFieldsDefinition();if(0===n.length&&0===i.length&&0===r.length)throw this.unexpected();return{kind:v.OBJECT_TYPE_EXTENSION,name:t,interfaces:n,directives:i,fields:r,loc:this.loc(e)}},t.parseInterfaceTypeExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("interface");var t=this.parseName(),n=this.parseDirectives(!0),i=this.parseFieldsDefinition();if(0===n.length&&0===i.length)throw this.unexpected();return{kind:v.INTERFACE_TYPE_EXTENSION,name:t,directives:n,fields:i,loc:this.loc(e)}},t.parseUnionTypeExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("union");var t=this.parseName(),n=this.parseDirectives(!0),i=this.parseUnionMemberTypes();if(0===n.length&&0===i.length)throw this.unexpected();return{kind:v.UNION_TYPE_EXTENSION,name:t,directives:n,types:i,loc:this.loc(e)}},t.parseEnumTypeExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("enum");var t=this.parseName(),n=this.parseDirectives(!0),i=this.parseEnumValuesDefinition();if(0===n.length&&0===i.length)throw this.unexpected();return{kind:v.ENUM_TYPE_EXTENSION,name:t,directives:n,values:i,loc:this.loc(e)}},t.parseInputObjectTypeExtension=function(){var e=this._lexer.token;this.expectKeyword("extend"),this.expectKeyword("input");var t=this.parseName(),n=this.parseDirectives(!0),i=this.parseInputFieldsDefinition();if(0===n.length&&0===i.length)throw this.unexpected();return{kind:v.INPUT_OBJECT_TYPE_EXTENSION,name:t,directives:n,fields:i,loc:this.loc(e)}},t.parseDirectiveDefinition=function(){var e=this._lexer.token,t=this.parseDescription();this.expectKeyword("directive"),this.expectToken(x.AT);var n=this.parseName(),i=this.parseArgumentDefs(),r=this.expectOptionalKeyword("repeatable");this.expectKeyword("on");var a=this.parseDirectiveLocations();return{kind:v.DIRECTIVE_DEFINITION,description:t,name:n,arguments:i,repeatable:r,locations:a,loc:this.loc(e)}},t.parseDirectiveLocations=function(){this.expectOptionalToken(x.PIPE);var e=[];do{e.push(this.parseDirectiveLocation())}while(this.expectOptionalToken(x.PIPE));return e},t.parseDirectiveLocation=function(){var e=this._lexer.token,t=this.parseName();if(void 0!==R[t.value])return t;throw this.unexpected(e)},t.loc=function(e){if(!this._options.noLocation)return new M(e,this._lexer.lastToken,this._lexer.source)},t.peek=function(e){return this._lexer.token.kind===e},t.expectToken=function(e){var t=this._lexer.token;if(t.kind===e)return this._lexer.advance(),t;throw N(this._lexer.source,t.start,"Expected ".concat(e,", found ").concat(B(t)))},t.expectOptionalToken=function(e){var t=this._lexer.token;if(t.kind===e)return this._lexer.advance(),t},t.expectKeyword=function(e){var t=this._lexer.token;if(t.kind!==x.NAME||t.value!==e)throw N(this._lexer.source,t.start,'Expected "'.concat(e,'", found ').concat(B(t)));this._lexer.advance()},t.expectOptionalKeyword=function(e){var t=this._lexer.token;return t.kind===x.NAME&&t.value===e&&(this._lexer.advance(),!0)},t.unexpected=function(e){var t=e||this._lexer.token;return N(this._lexer.source,t.start,"Unexpected ".concat(B(t)))},t.any=function(e,t,n){this.expectToken(e);for(var i=[];!this.expectOptionalToken(n);)i.push(t.call(this));return i},t.optionalMany=function(e,t,n){if(this.expectOptionalToken(e)){var i=[];do{i.push(t.call(this))}while(!this.expectOptionalToken(n));return i}return[]},t.many=function(e,t,n){this.expectToken(e);var i=[];do{i.push(t.call(this))}while(!this.expectOptionalToken(n));return i},e}();function M(e,t,n){this.start=e.start,this.end=t.end,this.startToken=e,this.endToken=t,this.source=n}function B(e){var t=e.value;return t?"".concat(e.kind,' "').concat(t,'"'):e.kind}u(M,(function(){return{start:this.start,end:this.end}}))}]);

var operators = 
{
  less: '<',
  greater: '>',
  equals: '=',
  contains: ' ILIKE '
};

var idField = 'Id';
var idPostfix = 'Id';

function distinct(value, index, self)
{
  return self.indexOf(value) === index;
}

function viewTable(selection, tableName, result, where, level)
{
  var table = selection.selectionSet;
  var tableKeys = table.selections.map(x => x.name.value);

  var fkQuery = `SELECT * FROM graphql.schema_foreign_keys WHERE table_name='${tableName}' OR foreign_table_name='${tableName}';`;
  //--plv8.elog(NOTICE, fkQuery);

  var fkRowsAll = plv8.execute(fkQuery);
  
  var fkRows = fkRowsAll.filter(x => x.column_name.length > idPostfix.length).filter(function (item)
  {
    return item.table_name === tableName
             && tableKeys.includes(item.column_name.substr(0, item.column_name.length - idPostfix.length));
  });

  var fkFields = fkRows.map(function(a, index) { return a.column_name });
  var allFields = fkFields.concat(tableKeys);
  var allFieldsFiltered = allFields.filter(function (item, pos) {return allFields.indexOf(item) === pos});

  var sysQuery = "SELECT column_name FROM graphql.schema_columns WHERE "
    + `table_name='${tableName}' AND column_name IN('${allFieldsFiltered.join("', '")}');`;

  //--plv8.elog(NOTICE, sysQuery);

  var rows = plv8.execute(sysQuery);

  var items = [];

  var qraphqlFilter = '';
  var qraphqlFilter0 = '';
  var idFilterValue = -1;
  var orderBy = '';
  var limit = '';

  //-- grapghql filter  
  if (selection.arguments !== undefined)
  {
    var args = selection.arguments.filter(x => x.name.value === 'filter');
    if (args.length > 0)
    {
      var filter = args[0];
      
	  var filterParts = filter.value.fields
	      .filter(x => x !== undefined)
		  .map(filterVal =>
      {
        if (filterVal.value.kind !== 'ObjectValue')
        {
          return (filterVal.value.kind === 'StringValue')
		    ? `a${level}."${filterVal.name.value}"='${filterVal.value.value}'`
		    : `a${level}."${filterVal.name.value}"=${filterVal.value.value}`;
        }
        else
        {
		  var value1 = (filterVal.value.fields[0].value.kind === 'StringValue') 
		    ? (filterVal.value.fields[0].name.value === 'contains' 
                 ? `'%${filterVal.value.fields[0].value.value}%'`
				 : `'${filterVal.value.fields[0].value.value}'`)
			: filterVal.value.fields[0].value.value;
			
          var operator = operators[filterVal.value.fields[0].name.value];
          return `a${level}."${filterVal.name.value}"${operator}${value1}`;
        }
      });
	  
	  if (filterParts.length > 0)
	  {
	    qraphqlFilter = ' ' + filterParts.join(' AND ');
		
        if (level === 1)
        {
          qraphqlFilter0 = qraphqlFilter;
        }
      }
    }
	
	var idFilterArgs = selection.arguments.filter(x => x.name.value === 'id');
	if (level === 1 && idFilterArgs.length > 0)
    {
      var idFilter = idFilterArgs[0];
	  qraphqlFilter = `a1."${idField}"=` + idFilter.value.value;
	}
	
	var orderArgs = selection.arguments.filter(x => x.name.value === 'orderBy');
	var orderDescArgs = selection.arguments.filter(x => x.name.value === 'orderByDescending');
	if (orderArgs.length > 0)
    {
      var order = orderArgs[0];
	  orderBy = ` ORDER BY a${level}."${order.value.value}"`;
	}
	else if (orderDescArgs.length > 0)
    {
      var orderDesc = orderDescArgs[0];
	  orderBy = ` ORDER BY a${level}."${orderDesc.value.value}" DESC`;
	}
	
	var skipArgs = selection.arguments.filter(x => x.name.value === 'skip');
	var takeArgs = selection.arguments.filter(x => x.name.value === 'take');
	if (takeArgs.length > 0)
    {
      var take = takeArgs[0];
	  limit = ' LIMIT ' + take.value.value;
	}
	if (skipArgs.length > 0)
    {
      var skip = skipArgs[0];
	  limit += ' OFFSET ' + skip.value.value;
	}
  }

  var sqlOperator = '';
  if (qraphqlFilter.length > 0)
  {
    sqlOperator = (where.length > 0) ? ' AND' : ' WHERE';
  }

  if (rows.length >= 0)
  {
    //-- сначала (allFieldsFiltered) проверить, есть ли у таблицы такие поля. Если нет - пропустить это условие
    var fields = rows.map(a => (a.column_name === 'CategoryFamilyId') ? `a${level}."FamilyId" AS "CategoryFamilyId"` : `a${level}."${a.column_name}"`);
    //-- то же самое - JOIN, см. далее
  
    var query = `SELECT ${fields.join(", ")} FROM ${schema}."${tableName}" a${level} ${where}${sqlOperator}${qraphqlFilter}${orderBy}${limit};`;

    plv8.elog(NOTICE, query);

    items = plv8.execute(query);    

    fkRows.filter(x => x.column_name.length > idPostfix.length).map(function(fkRow, index)    
    {
      //--plv8.elog(NOTICE, fkRow.column_name);
      table.selections.map(field =>
      {
        //--plv8.elog(NOTICE, 'field:' + field.name.value);
        if (field.name.value.toLowerCase() === fkRow.column_name.substr(0, fkRow.column_name.length - idPostfix.length).toLowerCase())
        {
          var ids = items.map(a => a[fkRow.column_name]).filter(item => item !== null).filter(distinct);
          if (ids.length > 0)
          {
            var subResult = {};
            var subResultOrdered = {};

            var innerWhere = (level === 2 && ids.length > 6500) 
                ? ` JOIN ${schema}."${tableName}" a${level} ON a${level}."${fkRow.column_name}"=a${level + 1}."${fkRow.foreign_column_name}" ${where}`
                : ` WHERE a${level + 1}."${fkRow.foreign_column_name}" IN(${ids.join(', ')})`;            
            
            viewTable(field, fkRow.foreign_table_name, subResult, innerWhere, level + 1);

            subResult[fkRow.foreign_table_name].map(a => subResultOrdered[a[fkRow.foreign_column_name]] = a);
            items.map(item => item[field.name.value] = subResultOrdered[item[fkRow.column_name]]);
          }
        }
      });
    });    

    var fkReverseRows = fkRowsAll.filter(function (item, pos)
    {
      return item.foreign_table_name === tableName
             && tableKeys.includes(item.table_name);
    });

    fkReverseRows.map(fkReverseRow =>
    {
      table.selections.map(field =>
      {
        if (field.name.value.toLowerCase() === fkReverseRow.table_name.toLowerCase())
        {
          var subResult = {};
          var subResultOrdered = {};

          sqlOperator = '';
          if (level === 1 && qraphqlFilter0.length > 0)
          {
            sqlOperator = (where.length > 0) ? ' AND' : ' WHERE';
            if (!qraphqlFilter0.startsWith('a1.'))
            {
              qraphqlFilter0 = `a1.${qraphqlFilter0}`;
            }
          }

          //-- то же самое - JOIN, пример: FamilyVersion->CategoryFamily->FamilyDisciplines
          var reverse_column_name = (fkReverseRow.column_name === 'CategoryFamilyId') ? 'FamilyId' : fkReverseRow.column_name;
          var innerWhere = 
             ` JOIN ${schema}."${tableName}" a${level} ON a${level}."${fkReverseRow.foreign_column_name}"=a${level + 1}."${reverse_column_name}" ${where}${sqlOperator}${qraphqlFilter0}`;

          if (limit.length > 0)
		  {
		    sqlOperator = (where.length > 0) || (qraphqlFilter0.length > 0)
			  ? ' AND' : ' WHERE';
			var ids = items.map(a => a[idField]);
			
			innerWhere += ` ${sqlOperator} a${level}."${idField}" IN(${ids.join(', ')})`;
		  }

          if (field.selectionSet !== undefined
            && field.selectionSet.selections !== undefined
            && field.selectionSet.selections.filter(x => x.name.value === fkReverseRow.column_name).length < 1)
          {
            var newSelection = {
                    "kind": "Field",
                    "name": {
                      "kind": "Name",
                      "value": fkReverseRow.column_name
                    }};
            field.selectionSet.selections.push(newSelection);
          }

          viewTable(field, fkReverseRow.table_name, subResult, innerWhere, level + 1);

          if (subResult[fkReverseRow.table_name] !== undefined)
          {
            subResult[fkReverseRow.table_name].map(function(a, index)
            {
              subResultOrdered[a[fkReverseRow.column_name]] = subResultOrdered[a[fkReverseRow.column_name]] || [];
              subResultOrdered[a[fkReverseRow.column_name]].push(a);
            });
          }
        
          items.map(function(item, index) { item[field.name.value] = subResultOrdered[item[idField]]; });
        }
      });
    });
  }

  if (items.length > 0)
  {    
    result[tableName] = (idFilterValue >= 0) ? items[0] : items;
  }
}

var result = {};

gqlquery.definitions[0].selectionSet.selections.map(x => viewTable(x, x.name.value, result, '', 1));

return { data: result };

$$ LANGUAGE plv8;
