import React, { Fragment } from 'react';
import PropTypes from 'prop-types';

import { DataTitleCopyable } from './data-title';

const SelectDataEntry: React.FunctionComponent<any> = (props) => { // TODO: remove any
    return (
        <Fragment>
            <DataTitleCopyable
                slug={props.slug}
                title={props.title}
                tooltip={props.tooltip}
                disabled={props.disabled}
                copy={props.copy}
            />
            <select className="form-control"
                id={props.slug} name={props.slug}
                value={props.value || ''}
                disabled={props.mode === 'view' || props.disabled}
                onChange={props.onChange}>
                <option value="">{props.placeholder}</option>
                {
                    props.options.map(option => (
                        <option key={option} value={option}>{option}</option>
                    ))
                }
            </select>
        </Fragment>
    );
}

SelectDataEntry.propTypes = {
    title: PropTypes.string,
    slug: PropTypes.string,
    tooltip: PropTypes.string,
    disabled: PropTypes.bool,
    value: PropTypes.any,
    placeholder: PropTypes.string,
    options: PropTypes.arrayOf(PropTypes.string),
    onChange: PropTypes.func,
    copy: PropTypes.shape({
        copying: PropTypes.bool,
        copyingKey: PropTypes.func,
        toggleCopyAttribute: PropTypes.func
    })
}

export default SelectDataEntry;
