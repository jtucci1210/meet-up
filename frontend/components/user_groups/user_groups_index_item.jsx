import React from 'react';
import { Link } from 'react-router-dom';


const UserGroupIndexItem = ({ group }) => {
    return (
        <div>
            <Link to={`/groups/${group.id}`}>{group.title} {group.members.length} Members</Link>
        </div>
    )
}

export default UserGroupIndexItem;