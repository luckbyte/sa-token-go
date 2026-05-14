package manager

// StpInterface is the permission / disable data source | 权限数据源接口
type StpInterface interface {
	GetPermissionList(loginID, loginType string) []string
	GetRoleList(loginID, loginType string) []string
	IsDisabled(loginID, service string) (level int, ttl int64)
}

// DefaultStpInterface is a no-op implementation | 默认实现
type DefaultStpInterface struct{}

// GetPermissionList returns nil to defer to session cache | 默认不从外部加载权限
func (d *DefaultStpInterface) GetPermissionList(loginID, loginType string) []string {
	return nil
}

// GetRoleList returns nil | 默认不从外部加载角色
func (d *DefaultStpInterface) GetRoleList(loginID, loginType string) []string {
	return nil
}

// IsDisabled reports not disabled | 默认未封禁
func (d *DefaultStpInterface) IsDisabled(loginID, service string) (level int, ttl int64) {
	return NotDisableLevel, NotValueExpire
}

const (
	// NotDisableLevel sentinel: not disabled | 未封禁
	NotDisableLevel = -2
	// MinDisableLevel minimum tiered disable level | 最小封禁等级
	MinDisableLevel = 1
	// NotValueExpire sentinel for missing TTL | 无 TTL / 未设置
	NotValueExpire = -2
)

var globalStpInterface StpInterface = &DefaultStpInterface{}

// SetGlobalStpInterface replaces the process-wide StpInterface | 注入全局 StpInterface
func SetGlobalStpInterface(impl StpInterface) {
	if impl == nil {
		globalStpInterface = &DefaultStpInterface{}
		return
	}
	globalStpInterface = impl
}

// GetGlobalStpInterface returns the current StpInterface | 获取当前 StpInterface
func GetGlobalStpInterface() StpInterface {
	return globalStpInterface
}
