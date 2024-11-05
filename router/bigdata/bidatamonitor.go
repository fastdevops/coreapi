package bigdata

import (
	"github.com/fastdevops/coreapi/middleware"
	"github.com/gin-gonic/gin"
)

type BigdataMonitorRouter struct{}

// InitBigdataMonitorRouter 初始化 大数据集群监控 路由信息
func (s *BigdataMonitorRouter) InitBigdataMonitorRouter(Router *gin.RouterGroup, PublicRouter *gin.RouterGroup) {
	bigdatamonitorRouter := Router.Group("bigdatamonitor").Use(middleware.OperationRecord())
	bigdatamonitorRouterWithoutRecord := Router.Group("bigdatamonitor")
	bigdatamonitorRouterWithoutAuth := PublicRouter.Group("bigdatamonitor")
	{
		bigdatamonitorRouter.POST("createBigdataMonitor", bigdatamonitorApi.CreateBigdataMonitor)             // 新建大数据集群监控
		bigdatamonitorRouter.DELETE("deleteBigdataMonitor", bigdatamonitorApi.DeleteBigdataMonitor)           // 删除大数据集群监控
		bigdatamonitorRouter.DELETE("deleteBigdataMonitorByIds", bigdatamonitorApi.DeleteBigdataMonitorByIds) // 批量删除大数据集群监控
		bigdatamonitorRouter.PUT("updateBigdataMonitor", bigdatamonitorApi.UpdateBigdataMonitor)              // 更新大数据集群监控
	}
	{
		bigdatamonitorRouterWithoutRecord.GET("findBigdataMonitor", bigdatamonitorApi.FindBigdataMonitor)       // 根据ID获取大数据集群监控
		bigdatamonitorRouterWithoutRecord.GET("getBigdataMonitorList", bigdatamonitorApi.GetBigdataMonitorList) // 获取大数据集群监控列表
	}
	{
		bigdatamonitorRouterWithoutAuth.GET("getBigdataMonitorPublic", bigdatamonitorApi.GetBigdataMonitorPublic) // 大数据集群监控开放接口
	}
}
