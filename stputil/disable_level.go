package stputil

import "time"

// DisableLevel tiered disable | 分级封禁
func DisableLevel(loginID interface{}, service string, level int, duration time.Duration) error {
	return GetManager().DisableLevel(toString(loginID), service, level, duration)
}

// IsDisableLevel reports whether disable level threshold is met | 是否达到封禁等级
func IsDisableLevel(loginID interface{}, service string, level int) bool {
	return GetManager().IsDisableLevel(toString(loginID), service, level)
}

// CheckDisableLevel validates disable level | 校验封禁等级
func CheckDisableLevel(loginID interface{}, service string, level int) error {
	return GetManager().CheckDisableLevel(toString(loginID), service, level)
}

// GetDisableLevel returns current disable level | 获取封禁等级
func GetDisableLevel(loginID interface{}, service string) int {
	return GetManager().GetDisableLevel(toString(loginID), service)
}

// UntieDisable removes disable markers for services | 解封 service
func UntieDisable(loginID interface{}, services ...string) error {
	return GetManager().UntieDisableServices(toString(loginID), services...)
}
