need to add 
`RUN chsh -s /user/sbin/nologin root`
to the docker file.

then run
docker run -u alexis -it --rm <image-ide> /bin/bash
