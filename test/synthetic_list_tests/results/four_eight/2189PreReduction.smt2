
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
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Cons l3) (is-Nil l2)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l2 l1) (= l1 l1)) )
(assert (is-Nil l0) )
(assert (or (= l3 l2) (= l2 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil l1) )
(check-sat)
