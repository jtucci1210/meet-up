import React from 'react';
import GroupIndexItem from './group_index_item';

class GroupIndex extends React.Component {
    constructor(props) {
        super(props);
    }
    componentDidMount () {
        this.props.fetchAllGroups();
    }

    render () {
        if (!this.props.groups) return null;
        return (
            <div>
                {this.props.groups.map(group => (
                    <GroupIndexItem key={group.id} group={group} />
                ))
                }
            </div>
        )
    }
}


export default GroupIndex;