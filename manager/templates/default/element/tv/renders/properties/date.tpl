<div id="modx-tv-wprops-form{$tv|default}"></div>
{literal}

<script type="text/javascript">
// <![CDATA[
var params = {
{/literal}{foreach from=$params key=k item=v name='p'}
 '{$k}': '{$v|escape:"javascript"}'{if NOT $smarty.foreach.p.last},{/if}
{/foreach}{literal}
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};
MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,labelAlign: 'top'
    ,cls: 'form-with-labels'
    ,border: false
    ,items: [{
        xtype: 'textfield'
        ,fieldLabel: _('date_format')
        ,description: MODx.expandHelp ? '' : _('date_format_desc')
        ,name: 'prop_format'
        ,id: 'prop_format{/literal}{$tv|default}{literal}'
        ,value: params['format'] || '%A %d, %B %Y'
        ,listeners: oc
        ,anchor: '100%'
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'prop_format{/literal}{$tv|default}{literal}'
        ,html: _('date_format_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'combo-boolean'
        ,fieldLabel: _('date_use_current')
        ,description: MODx.expandHelp ? '' : _('date_use_current_desc')
        ,name: 'prop_default'
        ,id: 'prop_default{/literal}{$tv|default}{literal}'
        ,value: (params['default']) ? !(params['default'] === 0 || params['default'] === 'false') : true
        ,listeners: oc
        ,anchor: '100%'
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'prop_default{/literal}{$tv|default}{literal}'
        ,html: _('default_desc')
        ,cls: 'desc-under'
    }]
    ,renderTo: 'modx-tv-wprops-form{/literal}{$tv|default}{literal}'
});
// ]]>
</script>
{/literal}
