import { RECEIVE_EVENT, RECEIVE_ALL_EVENTS, RECEIVE_EVENT_ERRORS} from '../actions/event_actions';

const eventErrorsReducer = (state = [], action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_EVENT_ERRORS:
            return action.errors;
        case RECEIVE_EVENT:
            return [];
        case RECEIVE_ALL_EVENTS:
            return [];
        default:
            return state;
    }
};
export default eventErrorsReducer;