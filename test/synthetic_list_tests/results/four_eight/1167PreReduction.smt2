
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
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l2) (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil l1)) )
(assert (is-Cons l3) )
(check-sat)
