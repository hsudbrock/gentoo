# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ROS_REPO_URI="https://github.com/ros/ros_comm"
KEYWORDS="~amd64 ~arm"
ROS_SUBDIR=utilities/${PN}

inherit ros-catkin

DESCRIPTION="Set of message filters which take in messages and outputs those at a later time"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	dev-ros/rosconsole
	dev-ros/roscpp
	dev-libs/boost:=[threads]
	dev-ros/genpy[${PYTHON_USEDEP}]
	dev-ros/roslib[${PYTHON_USEDEP}]
	dev-python/rospkg[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? (
		dev-ros/rostest[${PYTHON_USEDEP}]
		dev-ros/rosunit[${PYTHON_USEDEP}]
		dev-cpp/gtest
		dev-python/nose[${PYTHON_USEDEP}]
	)"
PATCHES=( "${FILESDIR}/tests.patch" )
