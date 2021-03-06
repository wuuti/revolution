<div id="tv-input-properties-form{$tv|default}"></div>

{literal}
<script type="text/javascript">
// <![CDATA[
var params = {
{/literal}
{foreach from=$params key=k item=v name='p'}
    '{$k}': '{$v|escape:"javascript"}'{if NOT $smarty.foreach.p.last},{/if}
{/foreach}
{literal}
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};

MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,cls: 'form-with-labels'
    ,labelAlign: 'top'
    ,border: false
    ,items: [{
        xtype: 'combo-boolean'
        ,fieldLabel: _('required')
        ,description: MODx.expandHelp ? '' : _('required_desc')
        ,name: 'inopt_allowBlank'
        ,hiddenName: 'inopt_allowBlank'
        ,id: 'inopt_allowBlank{/literal}{$tv|default}{literal}'
        ,anchor: '100%'
        ,value: (params['allowBlank']) ? !(params['allowBlank'] === 0 || params['allowBlank'] === 'false') : true
        ,listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_allowBlank{/literal}{$tv|default}{literal}'
        ,html: _('required_desc')
        ,cls: 'desc-under'
    },{
        layout: 'column'
        ,border: false
        ,defaults: {
            layout: 'form'
            ,labelAlign: 'top'
            ,labelSeparator: ''
            ,anchor: '100%'
            ,border: false
        }
        ,items: [{
            columnWidth: .5
            ,items: [{
                xtype: 'combo-boolean'
                ,fieldLabel: _('combo_typeahead')
                ,description: MODx.expandHelp ? '' : _('combo_typeahead_desc')
                ,name: 'inopt_typeAhead'
                ,hiddenName: 'inopt_typeAhead'
                ,id: 'inopt_typeAhead{/literal}{$tv|default}{literal}'
                ,anchor: '100%'
                ,value: (params['typeAhead']) ? !(params['typeAhead'] === 0 || params['typeAhead'] === 'false') : false
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_typeAhead{/literal}{$tv|default}{literal}'
                ,html: _('combo_typeahead_desc')
                ,cls: 'desc-under'
            }]
        },{
            columnWidth: .5
            ,items: [{
                xtype: 'textfield'
                ,fieldLabel: _('combo_typeahead_delay')
                ,description: MODx.expandHelp ? '' : _('combo_typeahead_delay_desc')
                ,name: 'inopt_typeAheadDelay'
                ,id: 'inopt_typeAheadDelay{/literal}{$tv|default}{literal}'
                ,value: params['typeAheadDelay'] || 250
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_typeAheadDelay{/literal}{$tv|default}{literal}'
                ,html: _('combo_typeahead_delay_desc')
                ,cls: 'desc-under'
            }]
        }]
    },{
        xtype: 'combo-boolean'
        ,fieldLabel: _('combo_forceselection')
        ,description: MODx.expandHelp ? '' : _('combo_forceselection_desc')
        ,name: 'inopt_forceSelection'
        ,hiddenName: 'inopt_forceSelection'
        ,id: 'inopt_forceSelection{/literal}{$tv|default}{literal}'
        ,anchor: '100%'
        ,value: (params['forceSelection']) ? !(params['forceSelection'] === 0 || params['forceSelection'] === 'false') : false
        ,listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_forceSelection{/literal}{$tv|default}{literal}'
        ,html: _('combo_forceselection_desc')
        ,cls: 'desc-under'
    },{
        layout: 'column'
        ,border: false
        ,defaults: {
            layout: 'form'
            ,labelAlign: 'top'
            ,labelSeparator: ''
            ,anchor: '100%'
            ,border: false
        }
        ,items: [{
            columnWidth: .5
            ,items: [{
                xtype: 'textfield'
                ,fieldLabel: _('combo_title')
                ,description: MODx.expandHelp ? '' : _('combo_title_desc')
                ,name: 'inopt_title'
                ,id: 'inopt_title{/literal}{$tv|default}{literal}'
                ,value: params['title'] || ''
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_title{/literal}{$tv|default}{literal}'
                ,html: _('combo_title_desc')
                ,cls: 'desc-under'
            }]
        },{
            columnWidth: .5
            ,items: [{
                xtype: 'textfield'
                ,fieldLabel: _('combo_listempty_text')
                ,description: MODx.expandHelp ? '' : _('combo_listempty_text_desc')
                ,name: 'inopt_listEmptyText'
                ,id: 'inopt_listEmptyText{/literal}{$tv|default}{literal}'
                ,value: params['listEmptyText'] || ''
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_listEmptyText{/literal}{$tv|default}{literal}'
                ,html: _('combo_listempty_text_desc')
                ,cls: 'desc-under'
            }]
        }]
    }]
    ,renderTo: 'tv-input-properties-form{/literal}{$tv|default}{literal}'
});
// ]]>
</script>
{/literal}
