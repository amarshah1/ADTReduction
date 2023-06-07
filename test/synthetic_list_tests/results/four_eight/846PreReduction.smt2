
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
(assert (is-Nil l0) )
(assert (and (is-Cons Nil) (is-Nil l3) (is-Cons Nil)) )
(assert (or (is-Nil l0) (= l3 Nil)) )
(assert (and (is-Cons l0) (= l2 Nil) (is-Cons l0) (is-Cons l0)) )
(assert (not (= l1 Nil)) )
(assert (not (= l3 l1)) )
(assert (or (= l2 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l1 l0) (= l2 l1)) )
(check-sat)
