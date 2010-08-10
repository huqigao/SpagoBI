Ext.QuickTip=Ext.extend(Ext.ToolTip,{interceptTitles:false,tagConfig:{namespace:"ext",attribute:"qtip",width:"qwidth",target:"target",title:"qtitle",hide:"hide",cls:"qclass",align:"qalign"},initComponent:function(){this.target=this.target||Ext.getDoc();this.targets=this.targets||{};Ext.QuickTip.superclass.initComponent.call(this)},register:function(e){var g=Ext.isArray(e)?e:arguments;for(var f=0,a=g.length;f<a;f++){var k=g[f];var h=k.target;if(h){if(Ext.isArray(h)){for(var d=0,b=h.length;d<b;d++){this.targets[Ext.id(h[d])]=k}}else{this.targets[Ext.id(h)]=k}}}},unregister:function(a){delete this.targets[Ext.id(a)]},onTargetOver:function(h){if(this.disabled){return}this.targetXY=h.getXY();var c=h.getTarget();if(!c||c.nodeType!==1||c==document||c==document.body){return}if(this.activeTarget&&c==this.activeTarget.el){this.clearTimer("hide");this.show();return}if(c&&this.targets[c.id]){this.activeTarget=this.targets[c.id];this.activeTarget.el=c;this.delayShow();return}var f,g=Ext.fly(c),b=this.tagConfig;var d=b.namespace;if(this.interceptTitles&&c.title){f=c.title;c.qtip=f;c.removeAttribute("title");h.preventDefault()}else{f=c.qtip||g.getAttributeNS(d,b.attribute)}if(f){var a=g.getAttributeNS(d,b.hide);this.activeTarget={el:c,text:f,width:g.getAttributeNS(d,b.width),autoHide:a!="user"&&a!=="false",title:g.getAttributeNS(d,b.title),cls:g.getAttributeNS(d,b.cls),align:g.getAttributeNS(d,b.align)};this.delayShow()}},onTargetOut:function(a){this.clearTimer("show");if(this.autoHide!==false){this.delayHide()}},showAt:function(b){var a=this.activeTarget;if(a){if(!this.rendered){this.render(Ext.getBody());this.activeTarget=a}if(a.width){this.setWidth(a.width);this.body.setWidth(this.adjustBodyWidth(a.width-this.getFrameWidth()));this.measureWidth=false}else{this.measureWidth=true}this.setTitle(a.title||"");this.body.update(a.text);this.autoHide=a.autoHide;this.dismissDelay=a.dismissDelay||this.dismissDelay;if(this.lastCls){this.el.removeClass(this.lastCls);delete this.lastCls}if(a.cls){this.el.addClass(a.cls);this.lastCls=a.cls}if(a.align){b=this.el.getAlignToXY(a.el,a.align);this.constrainPosition=false}else{this.constrainPosition=true}}Ext.QuickTip.superclass.showAt.call(this,b)},hide:function(){delete this.activeTarget;Ext.QuickTip.superclass.hide.call(this)}});