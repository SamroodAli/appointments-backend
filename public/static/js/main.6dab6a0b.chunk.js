(this["webpackJsonpappointments-frontend"]=this["webpackJsonpappointments-frontend"]||[]).push([[0],{29:function(e,t,n){},30:function(e,t,n){"use strict";n.r(t);var r=n(9),a=n.n(r),s=n(0),c=n(16),o={},u=n(7),i=n(15),l=Object(u.b)({}),j=window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__||u.c,b={actionCreators:o,store:Object(u.d)(l,j(Object(u.a)(i.a)))},p=n(10),h=n(1),O=n(2),d=function(){return Object(O.jsx)("h1",{children:"Home"})},f=function(){return Object(O.jsx)("div",{children:Object(O.jsx)(p.b,{to:"/signup",children:"Sign up"})})},m=n(6),x=n.n(m),v=n(8),g=n(5);function w(){return(w=Object(v.a)(x.a.mark((function e(){var t,n,r,a=arguments;return x.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return t=a.length>0&&void 0!==a[0]?a[0]:"",n=a.length>1&&void 0!==a[1]?a[1]:{},e.next=4,fetch(t,{method:"POST",mode:"cors",cache:"no-cache",credentials:"include",headers:{"Content-Type":"application/json"},redirect:"follow",referrerPolicy:"no-referrer",body:JSON.stringify(n)});case 4:return r=e.sent,e.abrupt("return",r.json());case 6:case"end":return e.stop()}}),e)})))).apply(this,arguments)}var S={baseUrl:"http://localhost:8000",get:function(e){var t=this;return Object(v.a)(x.a.mark((function n(){var r,a;return x.a.wrap((function(n){for(;;)switch(n.prev=n.next){case 0:return r=fetch(t.baseUrl+e),a=r.json(),n.abrupt("return",a);case 3:case"end":return n.stop()}}),n)})))()},post:function(e,t){return console.log("I am called",t),function(){return w.apply(this,arguments)}(this.baseUrl+e,t)}},y=function(){var e=Object(s.useState)("Samrood"),t=Object(g.a)(e,2),n=t[0],r=t[1],a=Object(s.useState)("samrood@gmailexample22.com"),c=Object(g.a)(a,2),o=c[0],u=c[1],i=Object(s.useState)("password"),l=Object(g.a)(i,2),j=l[0],b=l[1],p=Object(s.useState)("password"),h=Object(g.a)(p,2),d=h[0],f=h[1],m=function(){var e=Object(v.a)(x.a.mark((function e(t){var r,a;return x.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return t.preventDefault(),e.next=3,S.post("/auth/signup",{user:{username:n,email:o,password:j,password_confirmation:d}},{});case 3:r=e.sent,a=r.data,console.log(a);case 6:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}();return Object(O.jsxs)("form",{onSubmit:m,children:[Object(O.jsxs)("label",{htmlFor:"username",children:["Enter Username",Object(O.jsx)("input",{value:n,onChange:function(e){return r(e.target.value)}})]}),Object(O.jsxs)("label",{htmlFor:"username",children:["Enter email",Object(O.jsx)("input",{value:o,onChange:function(e){return u(e.target.value)}})]}),Object(O.jsxs)("label",{htmlFor:"username",children:["Enter password",Object(O.jsx)("input",{value:j,onChange:function(e){return b(e.target.value)}})]}),Object(O.jsxs)("label",{htmlFor:"username",children:["Confirm password",Object(O.jsx)("input",{value:d,onChange:function(e){return f(e.target.value)}})]}),Object(O.jsx)("input",{type:"submit",value:"Submit"})]})},E=function(){return Object(O.jsxs)(p.a,{children:[Object(O.jsx)(f,{}),Object(O.jsxs)(h.c,{children:[Object(O.jsx)(h.a,{path:"/",element:Object(O.jsx)(d,{})}),Object(O.jsx)(h.a,{path:"/signup",element:Object(O.jsx)(y,{})})]})]})};n(29);a.a.render(Object(O.jsx)(c.a,{store:b.store,children:Object(O.jsx)(E,{})}),document.getElementById("root"))}},[[30,1,2]]]);
//# sourceMappingURL=main.6dab6a0b.chunk.js.map