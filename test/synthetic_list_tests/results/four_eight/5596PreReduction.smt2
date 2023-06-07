
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (is-Cons l0)) )
(assert (is-Nil l0) )
(assert (or (= l2 l3) (is-Cons Nil) (is-Nil l1)) )
(assert (= l2 l1) )
(assert (and (is-Cons Nil) (= l3 l1) (is-Nil l3) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
