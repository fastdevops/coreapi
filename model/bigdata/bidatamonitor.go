// 自动生成模板BigdataMonitor
package bigdata

import (
	"github.com/fastdevops/coreapi/global"
)

// 大数据集群监控 结构体  BigdataMonitor
type BigdataMonitor struct {
	global.GVA_MODEL
	NodeName        *string `json:"nodeName" form:"nodeName" gorm:"column:node_name;comment:集群节点名称;" binding:"required"`                      //节点名称
	ComponentName   *string `json:"componentName" form:"componentName" gorm:"column:component_name;comment:监控的组件名称;" binding:"required"`      //组件名称
	ComponentStatus *string `json:"componentStatus" form:"componentStatus" gorm:"column:component_status;comment:组件运行状态;" binding:"required"` //组件状态
	ServerCPU       *string `json:"serverCPU" form:"serverCPU" gorm:"column:server_cpu;comment:服务器CPU使用率;" binding:"required"`                //服务器CPU
	ServerMemory    *string `json:"serverMemory" form:"serverMemory" gorm:"column:server_memory;comment:服务器内存使用率;" binding:"required"`        //服务器内存
	ServerDisk      *string `json:"serverDisk" form:"serverDisk" gorm:"column:server_disk;comment:服务器磁盘使用率;" binding:"required"`              //服务器磁盘
	Comment         *string `json:"comment" form:"comment" gorm:"column:comment;comment:组件说明;"`                                               //组件用途
}

// TableName 大数据集群监控 BigdataMonitor自定义表名 BigdataMonitor
func (BigdataMonitor) TableName() string {
	return "BigdataMonitor"
}
