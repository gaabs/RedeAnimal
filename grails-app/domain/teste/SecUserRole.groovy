package teste

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class SecUserRole implements Serializable {

	private static final long serialVersionUID = 1

	SecUser user
	SecRole role

	SecUserRole(SecUser u, SecRole r) {
		this()
		user = u
		role = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof SecUserRole)) {
			return false
		}

		other.user?.id == user?.id && other.role?.id == role?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static SecUserRole get(long userId, long roleId) {
		criteriaFor(userId, roleId).get()
	}

	static boolean exists(long userId, long roleId) {
		criteriaFor(userId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long userId, long roleId) {
		SecUserRole.where {
			user == SecUser.load(userId) &&
			role == SecRole.load(roleId)
		}
	}

	static SecUserRole create(SecUser user, SecRole role, boolean flush = false) {
		def instance = new SecUserRole(user: user, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(SecUser u, SecRole r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = SecUserRole.where { user == u && role == r }.deleteAll()

		if (flush) { SecUserRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(SecUser u, boolean flush = false) {
		if (u == null) return

		SecUserRole.where { user == u }.deleteAll()

		if (flush) { SecUserRole.withSession { it.flush() } }
	}

	static void removeAll(SecRole r, boolean flush = false) {
		if (r == null) return

		SecUserRole.where { role == r }.deleteAll()

		if (flush) { SecUserRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { SecRole r, SecUserRole ur ->
			if (ur.user == null || ur.user.id == null) return
			boolean existing = false
			SecUserRole.withNewSession {
				existing = SecUserRole.exists(ur.user.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['user', 'role']
		version false
	}
}
