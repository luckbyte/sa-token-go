package stputil

// OpenSafe enables second-level authentication | 开启二级认证
func OpenSafe(tokenValue, service string, safeTime int64) error {
	return GetManager().OpenSafe(tokenValue, service, safeTime)
}

// IsSafe reports second-level auth validity | 是否处于二级认证有效期
func IsSafe(tokenValue, service string) bool {
	return GetManager().IsSafe(tokenValue, service)
}

// CheckSafe asserts second-level auth | 校验二级认证
func CheckSafe(tokenValue, service string) error {
	return GetManager().CheckSafe(tokenValue, service)
}

// CloseSafe removes second-level auth marker | 关闭二级认证
func CloseSafe(tokenValue, service string) error {
	return GetManager().CloseSafe(tokenValue, service)
}

// GetSafeTime returns remaining seconds, -2 if inactive | 二级认证剩余时间
func GetSafeTime(tokenValue, service string) (int64, error) {
	return GetManager().GetSafeTime(tokenValue, service)
}
