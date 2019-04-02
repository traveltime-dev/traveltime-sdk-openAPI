//! Main library entry point for traveltimeplatform implementation.

mod server;

mod errors {
    error_chain!{}
}

pub use self::errors::*;
use std::io;
use std::clone::Clone;
use std::marker::PhantomData;
use hyper;
use traveltimeplatform;
use swagger::{Has, XSpanIdString};
use swagger::auth::Authorization;

pub struct NewService<C>{
    marker: PhantomData<C>
}

impl<C> NewService<C>{
    pub fn new() -> Self {
        NewService{marker:PhantomData}
    }
}

impl<C> hyper::server::NewService for NewService<C> where C: Has<XSpanIdString> + Has<Option<Authorization>> + Clone + 'static {
    type Request = (hyper::Request, C);
    type Response = hyper::Response;
    type Error = hyper::Error;
    type Instance = traveltimeplatform::server::Service<server::Server<C>, C>;

    /// Instantiate a new server.
    fn new_service(&self) -> io::Result<Self::Instance> {
        Ok(traveltimeplatform::server::Service::new(server::Server::new()))
    }
}