import { Col, Container, Row, Card, CardHeader, CardBody, Button,Table } from "reactstrap"
/*import {useEffect, useState } from "react"*/
import React from "react"
import ReactDOM from "react-dom"
 
class JavaScript extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            requests: []
        };
    }


    componentDidMount() {
        fetch("https://localhost:44301/api/request/Requests")
            .then(res => res.json())
            .then(
                (result) => {
                    this.setState({
                        requests: result
                    });
                }
            );
    }

    render() {
        return (
            <Container>
                <Row className="mt-5">

                    <Col sm="12">
                        <Card>
                            <CardHeader>
                                <h5>Requests</h5>

                            </CardHeader>
                            <CardBody>

                                <Button size="sm" color="success"></Button>
                                <hr></hr>
                                <Table stripped responsive>
                                    <thead>
                                        <tr>
                                            <th>RequestId</th>
                                            <th>Details</th>



                                        </tr>
                                    </thead>
                                    <tbody >

                                        {
                                            this.state.requests.map(emp => (
                                                <tr key={emp.RequestId}>
                                                    <td>{emp.RequestId}</td>
                                                    <td>{emp.RequestDetails}</td>
                                                   
                                                </tr>
                                            ))
                                            //(data.length < 1) ? (
                                            //    <tr>
                                            //        <td colSpan="4">No date</td>


                                            //    </tr>
                                            //) : (
                                            //        data.map((item) => (
                                            //            <tr key={item.RequestId}>
                                            //                <td>{item.RequestId}</td>
                                            //                <td>{item.RequestDetails}</td>

                                            //                <td>
                                            //                    <Button color="primary" size="sm" className="me-2">Edit</Button>
                                            //                    <Button color="danger" size="sm" >Delete</Button>
                                            //                </td>
                                            //            </tr>
                                            //            ))
                                            //        )



                                        }
                                    </tbody>

                                </Table>

                            </CardBody>


                        </Card>

                    </Col>



                </Row>



            </Container>
        )


    }
}

export default JavaScript;

const element = <JavaScript></JavaScript>

ReactDOM.render(element, document.getElementById("root"));